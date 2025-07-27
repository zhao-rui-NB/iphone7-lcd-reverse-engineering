import serial
import time
import os


all_reg = [0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF,0xE0,0xE1,0xE2,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xFF,]


# 配置串口參數
SERIAL_PORT = 'COM6'  # 修改為你的串口名稱
BAUD_RATE = 115200
TIMEOUT = 5  # 設定讀取超時

# 指令定義
CMD_SSD2828_RESET = 0
CMD_SSD2828_READ_REG = 1
CMD_SSD2828_WRITE_REG = 2
CMD_SSD2828_WRITE_SHORT_NO_PARA_DCS = 3

# 回應狀態
STATUS_OK = 0x00
STATUS_TIMEOUT = 0x01
STATUS_INVALID_HEADER = 0x02
STATUS_INVALID_SIZE = 0x03
STATUS_INVALID_CHECKSUM = 0x04
STATUS_INVALID_COMMAND = 0x05
STATUS_INVALID_PAYLOAD_SIZE = 0x06

# 計算校驗和
def calculate_checksum(data):
    checksum = 0
    for byte in data:
        checksum ^= byte
    return checksum

# 生成發送的包
def create_packet(cmd, data):
    packet = bytearray()
    packet.append(0x5A)  # Header
    packet.append(len(data) + 1)  # Data size (command + data)
    packet.append(cmd)  # Command
    packet.extend(data)  # Payload data

    checksum = calculate_checksum(packet)
    packet.append(checksum)  # 校驗和

    return packet

def _read_byte_to_int(ser:serial.Serial):
    d = ser.read(1)
    if len(d) == 0:
        return False, None
    return True, int.from_bytes(d, 'little')

def send_packet(ser:serial.Serial, cmd, data):
    # clear all buffer
    ser.reset_input_buffer()
    ser.reset_output_buffer()
    
    packet = create_packet(cmd, data)
    # print(f'[send_packet] {packet.hex()}')
    ser.write(packet)  # 發送包
    
def read_packet(ser:serial.Serial):
    succ, header = _read_byte_to_int(ser)
    if not succ or header != 0xA5:
        print("[send_packet] read header error")
        return False, None
    # print(f"[read_packet] header: 0x{header:02x}")
        
    succ, status = _read_byte_to_int(ser)
    if not succ:
        print("[send_packet] read status error")
        return False, None
    # print(f"[read_packet] status: 0x{status:02x}")

    succ, data_size = _read_byte_to_int(ser)
    if not succ:
        print("[read_packet] read data size error")
        return False, None
    # print(f"[read_packet] data_size: 0x{data_size:02x}")
    
    data = []
    for i in range(data_size):
        succ, d = _read_byte_to_int(ser)
        if not succ:
            print(f"[read_packet] read data[{i}] error")
            return False, None
        data.append(d)
    # print(f"[read_packet] data: [{', '.join([f'0x{d:02x}' for d in data])}]")
        
    
    succ, checksum = _read_byte_to_int(ser)
    if not succ:
        print("[read_packet] read checksum error")
        return False, None
    # print(f"[read_packet] checksum: 0x{checksum:02x}")
    
    if calculate_checksum([header, status, data_size] + data) != checksum:
        print("[read_packet] checksum error")
        return False, None
    
    if status != STATUS_OK:
        if status == STATUS_TIMEOUT:
            print("[read_packet] mcu error code: TIMEOUT")
        elif status == STATUS_INVALID_HEADER:
            print("[read_packet] mcu error code: INVALID_HEADER")
        elif status == STATUS_INVALID_SIZE:
            print("[read_packet] mcu error code: INVALID_SIZE")
        elif status == STATUS_INVALID_CHECKSUM:
            print("[read_packet] mcu error code: INVALID_CHECKSUM")
        elif status == STATUS_INVALID_COMMAND:
            print("[read_packet] mcu error code: INVALID_COMMAND")
        elif status == STATUS_INVALID_PAYLOAD_SIZE:
            print("[read_packet] mcu error code: INVALID_PAYLOAD_SIZE")
        else:            
            print(f"[read_packet] status error: 0x{status:02x}")
        
        return False, None
    
    return True, data


def test():
    # 打開串口
    ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=TIMEOUT)
    time.sleep(2)  # 等待串口初始化完成

    send_packet(ser, CMD_SSD2828_RESET, [])  # 發送命令0，復位
    r = read_packet(ser)
    # print(r)
    # print('-'*20)
    
    send_packet(ser, CMD_SSD2828_READ_REG, [0xb0])
    r = read_packet(ser)
    # print(r)
    # print('-'*20)
    
    print("Write register")
    send_packet(ser, CMD_SSD2828_WRITE_REG, [0xb1, 69,34])
    r = read_packet(ser)
    # print(r)
    # print('-'*20)
    
    send_packet(ser, CMD_SSD2828_READ_REG, [0xb1])
    r = read_packet(ser)
    # print(r)
    # print('-'*20)
    
    
    time.sleep(1)
    ser.close()
        
def SSD_MIPI_WriteShortDCS(ser:serial.Serial, reg, data):
    send_packet(ser, CMD_SSD2828_WRITE_REG, [0xb7, 0x00, 0x50])
    send_packet(ser, CMD_SSD2828_WRITE_REG, [0xb8, 0x00, 0x00])
    send_packet(ser, CMD_SSD2828_WRITE_REG, [0xbc, 0x00, 0x02])
    
    send_packet(ser, CMD_SSD2828_WRITE_REG, [0xbf, reg, data])

def SSD2828_Reset(ser:serial.Serial):
    send_packet(ser, CMD_SSD2828_RESET, [])  # 發送命令0，復位
    r = read_packet(ser)
    print(f'[SSD2828_Reset] {"success" if r[0] else "fail"}, response: {r[1]}')

def SSD2828_WriteReg(ser:serial.Serial, reg, data):
    send_packet(ser, CMD_SSD2828_WRITE_REG, [reg, (data>>8)&0xff, data&0xff])
    r = read_packet(ser)
    print(f'[SSD2828_WriteReg] {"success" if r[0] else "fail"}, reg: {reg:#04x}, response: {r[1]}')
    
def SSD2828_ReadReg(ser:serial.Serial, reg):   
    send_packet(ser, CMD_SSD2828_READ_REG, [reg])
    r = read_packet(ser)

    if r[0] == False:
        return None
    if len(r[1]) != 2:
        print(f"Read register error: {r[1]}")
        return None
    
    reg = r[1][0] << 8 | r[1][1]
        
    print(f'[SSD2828_ReadReg] {"success" if r[0] else "fail"}, reg: {reg:#04x}, data: {reg:#06x}, response: {r[1]}')
    return reg

def SSD2828_WRITE_SHORT_NO_PARA_DCS(ser:serial.Serial, reg):
    send_packet(ser, CMD_SSD2828_WRITE_SHORT_NO_PARA_DCS, [reg])
    r = read_packet(ser)
    print(f'[SSD2828_WRITE_SHORT_NO_PARA_DCS] {"success" if r[0] else "fail"}, reg: {reg:#04x}, response: {r[1]}')

def SSD2828_dump_all_reg(ser:serial.Serial):
    # ./dump
    os.makedirs("dump", exist_ok=True)
    now = time.strftime("%Y%m%d_%H%M%S")
    with open(f"dump/ssd2828_{now}.txt", "w") as f:
        for reg in all_reg:
            res = SSD2828_ReadReg(ser, reg)
            f.write(f"reg: {reg:#04x} = {res:#06x}\n")
            # print(f"reg: {reg:#04x} = {res:#06x}")

def ssd2828_init(ser:serial.Serial):
    SSD2828_Reset(ser)
    SSD2828_ReadReg(ser, 0xb0)
    
    SSD2828_WriteReg(ser, 0xb7,0x0300)

    SSD2828_WriteReg(ser, 0xde,0x0003)
    SSD2828_WriteReg(ser, 0xb9,0x0000)

    SSD2828_WriteReg(ser, 0xb9,0x0001)
    SSD2828_WriteReg(ser, 0xb8,0x0000)

    DISP_VSA = 3
    DISP_HSA = 6
    DISP_VBP = 4
    DISP_HBP = 0
    DISP_VFP = 255
    DISP_HFP = 4
    DISP_HACT = 750
    DISP_VACT = 1334
    SSD2828_WriteReg(ser, 0xB1, (DISP_VSA << 8) | DISP_HSA)
    SSD2828_WriteReg(ser, 0xB2, (DISP_VBP << 8) | DISP_HBP)
    SSD2828_WriteReg(ser, 0xB3, (DISP_VFP << 8) | DISP_HFP)
    SSD2828_WriteReg(ser, 0xB4, DISP_HACT)
    SSD2828_WriteReg(ser, 0xB5, DISP_VACT)


    SSD2828_WriteReg(ser, 0xb9,0x0000)

    #pll 8*62=496
    # 8*124=992
    #00 - 62.5-125, 01 - 126-250, 10 - 251-500, 11 - 501-1000
    SSD2828_WriteReg(ser, 0xba,(0b10000000)<<8|21)

    #polarity
    SSD2828_WriteReg(ser, 0xb6,0b11000000<<8|0b00000111)

    SSD2828_WriteReg(ser, 0xbb,0x0007)
    SSD2828_WriteReg(ser, 0xb9,0x0001)

    time.sleep(0.1)
    SSD2828_WRITE_SHORT_NO_PARA_DCS(ser,0x11)
    time.sleep(0.15)
    SSD2828_WRITE_SHORT_NO_PARA_DCS(ser,0x29)

    SSD2828_WriteReg(ser, 0xc9,28<<8 | 13)
    SSD2828_WriteReg(ser, 0xca,13<<8 | 12)
    SSD2828_WriteReg(ser, 0xcb,8<<8 | 39)
    SSD2828_WriteReg(ser, 0xcc,13<<8 | 30)

    SSD2828_WriteReg(ser, 0xc9, 0x2330)
    SSD2828_WriteReg(ser, 0xca, 0x2301)
    SSD2828_WriteReg(ser, 0xcb, 0x0510)
    SSD2828_WriteReg(ser, 0xcc, 0x1005)

    SSD2828_WriteReg(ser, 0xCF,0x0000)
    SSD2828_WriteReg(ser, 0xd0,0x0000)

    #rgb mode # burst
    SSD2828_WriteReg(ser, 0xb6,0b00001011|(0b00000000<<8))

    SSD2828_WriteReg(ser, 0xde,0x0002) # to 3 lane

    #ssd2828 bist
    SSD2828_WriteReg(ser, 0xee,0x0600)
    #hs
    SSD2828_WriteReg(ser, 0xb7,0x024b)


    # dump all reg 
    # SSD2828_dump_all_reg(ser)
    
    print(f'[ssd2828_init] init script done')

def ssd2828_init_2(ser:serial.Serial):
    SSD2828_Reset(ser)
    SSD2828_ReadReg(ser, 0xb0)
    
    SSD2828_WriteReg(ser, 0xb7,0x0300)

    SSD2828_WriteReg(ser, 0xde,0x0003)
    SSD2828_WriteReg(ser, 0xb9,0x0000)

    SSD2828_WriteReg(ser, 0xb9,0x0001)
    SSD2828_WriteReg(ser, 0xb8,0x0000)

    DISP_VSA = 3
    DISP_HSA = 6
    DISP_VBP = 4
    DISP_HBP = 0
    DISP_VFP = 255
    DISP_HFP = 2
    DISP_HACT = 750
    DISP_VACT = 1334
    SSD2828_WriteReg(ser, 0xB1, (DISP_VSA << 8) | DISP_HSA)
    SSD2828_WriteReg(ser, 0xB2, (DISP_VBP << 8) | DISP_HBP)
    SSD2828_WriteReg(ser, 0xB3, (DISP_VFP << 8) | DISP_HFP)
    SSD2828_WriteReg(ser, 0xB4, DISP_HACT)
    SSD2828_WriteReg(ser, 0xB5, DISP_VACT)


    SSD2828_WriteReg(ser, 0xb9,0x0000)

    #pll 8*62=496
    # 8*124=992
    #00 - 62.5-125, 01 - 126-250, 10 - 251-500, 11 - 501-1000
    SSD2828_WriteReg(ser, 0xba,(0b11000000)<<8|42)

    #polarity
    SSD2828_WriteReg(ser, 0xb6,0b11000000<<8|0b00000111)

    SSD2828_WriteReg(ser, 0xbb,0x0007)
    SSD2828_WriteReg(ser, 0xb9,0x0001)

    time.sleep(0.1)
    SSD2828_WRITE_SHORT_NO_PARA_DCS(ser,0x11)
    time.sleep(0.15)
    SSD2828_WRITE_SHORT_NO_PARA_DCS(ser,0x29)

    SSD2828_WriteReg(ser, 0xc9,28<<8 | 13)
    SSD2828_WriteReg(ser, 0xca,13<<8 | 12)
    SSD2828_WriteReg(ser, 0xcb,8<<8 | 39)
    SSD2828_WriteReg(ser, 0xcc,13<<8 | 30)

    SSD2828_WriteReg(ser, 0xc9, 0x2330)
    SSD2828_WriteReg(ser, 0xca, 0x2301)
    SSD2828_WriteReg(ser, 0xcb, 0x0510)
    SSD2828_WriteReg(ser, 0xcc, 0x1005)

    SSD2828_WriteReg(ser, 0xCF,0x0000)
    SSD2828_WriteReg(ser, 0xd0,0x0000)

    #rgb mode # burst, bit 3-2, 
    # 00 – Non burst mode with sync
    # pulses
    # 01 – Non burst mode with sync
    # events
    # 10 – Burst mode
    SSD2828_WriteReg(ser, 0xb6,0b00000111|(0b00000000<<8)) # 01

    SSD2828_WriteReg(ser, 0xde,0x0002) # to 3 lane

    #ssd2828 bist
    # SSD2828_WriteReg(ser, 0xee,0x0600)
    #hs
    SSD2828_WriteReg(ser, 0xb7,0x024b)


    # dump all reg 
    # SSD2828_dump_all_reg(ser)
    
    print(f'[ssd2828_init] init script done')

def ssd2828_init_3(ser:serial.Serial):
    SSD2828_Reset(ser)
    SSD2828_ReadReg(ser, 0xb0)
    
    SSD2828_WriteReg(ser, 0xb7,0x0300)

    SSD2828_WriteReg(ser, 0xde,0x0003)
    SSD2828_WriteReg(ser, 0xb9,0x0000)

    SSD2828_WriteReg(ser, 0xb9,0x0001)
    SSD2828_WriteReg(ser, 0xb8,0x0000)

    # DISP_VSA = 3
    # DISP_HSA = 6
    # DISP_VBP = 4
    # DISP_HBP = 0
    # DISP_VFP = 255
    # DISP_HFP = 2
    # DISP_HACT = 750
    # DISP_VACT = 1334
    
    # 2
    DISP_VSA = 3
    DISP_HSA = 6
    DISP_VBP = 4
    DISP_HBP = 0
    DISP_VFP = 255
    DISP_HFP = 2
    DISP_HACT = 750
    DISP_VACT = 1334
    
    SSD2828_WriteReg(ser, 0xB1, (DISP_VSA << 8) | DISP_HSA)
    SSD2828_WriteReg(ser, 0xB2, (DISP_VBP << 8) | DISP_HBP)
    SSD2828_WriteReg(ser, 0xB3, (DISP_VFP << 8) | DISP_HFP)
    SSD2828_WriteReg(ser, 0xB4, DISP_HACT)
    SSD2828_WriteReg(ser, 0xB5, DISP_VACT)


    SSD2828_WriteReg(ser, 0xb9,0x0000)

    #pll 8*62=496
    # 8*124=992
    #00 - 62.5-125, 01 - 126-250, 10 - 251-500, 11 - 501-1000
    SSD2828_WriteReg(ser, 0xba,(0b10000000)<<8|21)

    #polarity
    # SSD2828_WriteReg(ser, 0xb6,0b11000000<<8|0b00000111)

    # SSD2828_WriteReg(ser, 0xbb,0x000c)
    # SSD2828_WriteReg(ser, 0xb9,0x0001)

    time.sleep(0.1)
    SSD2828_WRITE_SHORT_NO_PARA_DCS(ser,0x11)
    time.sleep(0.15)
    SSD2828_WRITE_SHORT_NO_PARA_DCS(ser,0x29)

    SSD2828_WriteReg(ser, 0xc9,28<<8 | 13)
    SSD2828_WriteReg(ser, 0xca,13<<8 | 12)
    SSD2828_WriteReg(ser, 0xcb,8<<8 | 39)
    SSD2828_WriteReg(ser, 0xcc,13<<8 | 30)

    SSD2828_WriteReg(ser, 0xc9, 0x2330)
    SSD2828_WriteReg(ser, 0xca, 0x2301)
    SSD2828_WriteReg(ser, 0xcb, 0x0510)
    SSD2828_WriteReg(ser, 0xcc, 0x1005)

    SSD2828_WriteReg(ser, 0xCF,0x0000)
    SSD2828_WriteReg(ser, 0xd0,0x0000)

    #rgb mode # burst, bit 3-2, 
    # 00 – Non burst mode with sync
    # pulses
    # 01 – Non burst mode with sync
    # events
    # 10 – Burst mode
    SSD2828_WriteReg(ser, 0xb6,0b00001011|(0b00000000<<8)) # 01

    SSD2828_WriteReg(ser, 0xde,0x0002) # to 3 lane

    #ssd2828 bist
    # SSD2828_WriteReg(ser, 0xee,0x0600)
    #hs
    SSD2828_WriteReg(ser, 0xb7,0x024b)


    # dump all reg 
    # SSD2828_dump_all_reg(ser)
    
    print(f'[ssd2828_init] init script done')

def ssd2828_init_ip6_1334_750(ser:serial.Serial):
    SSD2828_Reset(ser)

    DISP_HSA = 6
    DISP_HBP = 0
    DISP_HACT = 750
    DISP_HFP = 2
    
    DISP_VSA = 3
    DISP_VBP = 4
    DISP_VACT = 1334
    DISP_VFP = 200

    DISP_VBP += DISP_VSA
    DISP_HBP += DISP_HSA
    
    SSD2828_WriteReg(ser, 0xB1, (DISP_VSA << 8) | DISP_HSA) # only vaid at sync pulse mode
    SSD2828_WriteReg(ser, 0xB2, (DISP_VBP << 8) | DISP_HBP)
    SSD2828_WriteReg(ser, 0xB3, (DISP_VFP << 8) | DISP_HFP)
    SSD2828_WriteReg(ser, 0xB4, DISP_HACT)
    SSD2828_WriteReg(ser, 0xB5, DISP_VACT)

    #rgb mode # burst, bit 3-2
    # 00 – Non burst mode with sync pulses, 01 – Non burst mode with sync events, 10 – Burst mode
    SSD2828_WriteReg(ser, 0xB6, (0b00000000<<8) | (0b00001011)) # 24bit rgb, pclk posedge, video MODE
    
    # bit9:EOT, bit8:ECD, bit6:DCS, bit5:CSS, bit4:HCLK, bit3:VEN, bit2:SLP, bit1:CKE, bit0:HS
    SSD2828_WriteReg(ser, 0xB7, 1<<5) # CSS ref pclk, set before pll on

    # pll pclk 50mhz*10 = 500mbps
    # bit15-14: 00 - 62.5-125, 01 - 126-250, 10 - 251-500, 11 - 501-1000
    SSD2828_WriteReg(ser, 0xba,(0b11000000)<<8 | 10) # pll speed

    
    # div 7, 500mbps/8/LPD = 8.92 MHZ
    # div 10 840mbps/10/LPD = 8.4 MHZ
    SSD2828_WriteReg(ser, 0xbb,0x000A) # LP clock div
    
    # 500mbps 3 lane
    # HZD = 15
    # HPD = 2
    # CZD = 33
    # CPD = 2
    # CPED = 3
    # CPTD = 21
    # CTD = 8
    # HTD = 9
    
    HZD = 24
    HPD = 6
    CZD = 56
    CPD = 5
    CPED = 2
    CPTD = 26
    CTD = 13
    HTD = 14
    
    SSD2828_WriteReg(ser, 0xc9, HZD<<8  | HPD)
    SSD2828_WriteReg(ser, 0xca, CZD<<8  | CPD)
    SSD2828_WriteReg(ser, 0xcb, CPED<<8 | CPTD)
    SSD2828_WriteReg(ser, 0xcc, CTD<<8  | HTD)

    SSD2828_WriteReg(ser, 0xde,0x0002) # 3 lane
    
    
    # ### exit sleep mode, set display on
    
    SSD2828_WriteReg(ser, 0xb9,0x0001) # PLL ON

    time.sleep(0.3)
    SSD2828_WRITE_SHORT_NO_PARA_DCS(ser,0x11)
    time.sleep(0.3)
    SSD2828_WRITE_SHORT_NO_PARA_DCS(ser,0x29)

    
    # SSD2828_WriteReg(ser, 0xee,0x0600) #ssd2828 bist

    # bit9:EOT, bit8:ECD, bit6:DCS, bit5:CSS, bit3:VEN, bit2:SLP, bit1:CKE, bit0:HS
    SSD2828_WriteReg(ser, 0xb7, (0b00000011)<<8 | (0b01101011)) # hs enable
    
    print(f'[ssd2828_init] init script done')


def ssd2828_init_ip7_1334_750_test1(ser:serial.Serial):
    SSD2828_Reset(ser)

    DISP_HSA = 6
    DISP_HBP = 0
    DISP_HACT = 750
    DISP_HFP = 2
    
    DISP_VSA = 3
    DISP_VBP = 4
    DISP_VACT = 1334
    DISP_VFP = 200

    DISP_VBP += DISP_VSA
    DISP_HBP += DISP_HSA
    
    SSD2828_WriteReg(ser, 0xB1, (DISP_VSA << 8) | DISP_HSA) # only vaid at sync pulse mode
    SSD2828_WriteReg(ser, 0xB2, (DISP_VBP << 8) | DISP_HBP)
    SSD2828_WriteReg(ser, 0xB3, (DISP_VFP << 8) | DISP_HFP)
    SSD2828_WriteReg(ser, 0xB4, DISP_HACT)
    SSD2828_WriteReg(ser, 0xB5, DISP_VACT)

    #rgb mode # burst, bit 3-2
    # 00 – Non burst mode with sync pulses, 01 – Non burst mode with sync events, 10 – Burst mode
    SSD2828_WriteReg(ser, 0xB6, (0b00000000<<8) | (0b00000111)) # 24bit rgb, pclk posedge, video MODE
    
    # bit9:EOT, bit8:ECD, bit6:DCS, bit5:CSS, bit4:HCLK, bit3:VEN, bit2:SLP, bit1:CKE, bit0:HS
    SSD2828_WriteReg(ser, 0xB7, 1<<5) # CSS ref pclk, set before pll on

    # pll pclk 50mhz*10 = 500mbps
    # bit15-14: 00 - 62.5-125, 01 - 126-250, 10 - 251-500, 11 - 501-1000
    SSD2828_WriteReg(ser, 0xba,(0b11000000)<<8 | 12) # pll speed

    
    # div 7, 500mbps/8/LPD = 8.92 MHZ
    # div 10 840mbps/10/LPD = 8.4 MHZ
    SSD2828_WriteReg(ser, 0xbb,0x000B) # LP clock div
    
    # 500mbps 3 lane
    # HZD = 15
    # HPD = 2
    # CZD = 33
    # CPD = 2
    # CPED = 3
    # CPTD = 21
    # CTD = 8
    # HTD = 9
    
    HZD = 22
    HPD = 10
    CZD = 35
    CPD = 11
    CPED = 10
    CPTD = 75
    CTD = 10
    HTD = 18
    
    SSD2828_WriteReg(ser, 0xc9, HZD<<8  | HPD)
    SSD2828_WriteReg(ser, 0xca, CZD<<8  | CPD)
    SSD2828_WriteReg(ser, 0xcb, CPED<<8 | CPTD)
    SSD2828_WriteReg(ser, 0xcc, CTD<<8  | HTD)

    SSD2828_WriteReg(ser, 0xde,0x0001) # 2 lane
    
    
    # ### exit sleep mode, set display on
    
    SSD2828_WriteReg(ser, 0xb9,0x0001) # PLL ON
    SSD2828_WriteReg(ser, 0xb7, (0b00000011)<<8 | (0b01100011)) # hs enable

    time.sleep(0.3)
    SSD2828_WRITE_SHORT_NO_PARA_DCS(ser,0x11)
    time.sleep(0.3)
    SSD2828_WRITE_SHORT_NO_PARA_DCS(ser,0x29)

    
    # SSD2828_WriteReg(ser, 0xee,0x0600) #ssd2828 bist

    # bit9:EOT, bit8:ECD, bit6:DCS, bit5:CSS, bit3:VEN, bit2:SLP, bit1:CKE, bit0:HS
    SSD2828_WriteReg(ser, 0xb7, (0b00000011)<<8 | (0b01101011)) # hs enable
    
    # time.sleep(1)
    # SSD2828_WRITE_SHORT_NO_PARA_DCS(ser,0x11)
    # time.sleep(1)
    # SSD2828_WRITE_SHORT_NO_PARA_DCS(ser,0x29)
    
    print(f'[ssd2828_init] init script done')


def ssd2828_init_ip7_1334_750(ser:serial.Serial):
    print(f'[ssd2828_init_ip7_1334_750] init script start')
    SSD2828_Reset(ser)
    
    DISP_HSA = 3
    DISP_HBP = 0
    DISP_HACT = 750
    DISP_HFP = 132
    
    DISP_VSA = 3
    DISP_VBP = 4
    DISP_VACT = 1334
    DISP_VFP = 536

    # non burst with sync events bp need to include vsync and hsync
    DISP_VBP += DISP_VSA
    DISP_HBP += DISP_HSA
    
    # 2025 0726
    # HZD = 22
    # HPD = 10
    # CZD = 35
    # CPD = 11
    # CPED = 10
    # CPTD = 75
    # CTD = 10
    # HTD = 18
    
    HZD = 22
    HPD = 5
    CZD = 50
    CPD = 5
    CPED = 2
    CPTD = 25
    CTD = 12
    HTD = 13

    SSD2828_WriteReg(ser, 0xB1, (DISP_VSA << 8) | DISP_HSA) # only vaid at sync pulse mode
    SSD2828_WriteReg(ser, 0xB2, (DISP_VBP << 8) | DISP_HBP)
    SSD2828_WriteReg(ser, 0xB3, (DISP_VFP << 8) | DISP_HFP)
    SSD2828_WriteReg(ser, 0xB4, DISP_HACT)
    SSD2828_WriteReg(ser, 0xB5, DISP_VACT)

    #rgb mode # burst, bit 3-2
    # 00 – Non burst mode with sync pulses, 01 – Non burst mode with sync events, 10 – Burst mode
    # SSD2828_WriteReg(ser, 0xB6, (0b00000000<<8) | (0b00000111)) # 24bit rgb, pclk posedge, video MODE
    SSD2828_WriteReg(ser, 0xB6, (0b00000000<<8) | (0b00001011)) # 24bit rgb, pclk posedge, video MODE ##### test
    
    # bit9:EOT, bit8:ECD, bit6:DCS, bit5:CSS, bit4:HCLK, bit3:VEN, bit2:SLP, bit1:CKE, bit0:HS
    # SSD2828_WriteReg(ser, 0xB7, 1<<5) # CSS ref pclk, set before pll on
    SSD2828_WriteReg(ser, 0xB7, (0b00000000)<<8 | (0b01100010)) # hs enable ###### test
    SSD2828_WriteReg(ser, 0xB8, 0x0000) # all channel id set to 0
    # B9 PLL control reg
    
    # pll pclk 50mhz*10 = 500mbps
    # bit15-14: 00 - 62.5-125, 01 - 126-250, 10 - 251-500, 11 - 501-1000
    SSD2828_WriteReg(ser, 0xBA,(0b11000000)<<8 | 15) # pll speed
    # SSD2828_WriteReg(ser, 0xBA,(0b11000000)<<8 | 13) # pll speed #### test
    
    # div 12 840mbps/8/LPD = 8.75 MHZ # div 7, 500mbps/8/LPD = 8.92 MHZ
    SSD2828_WriteReg(ser, 0xBB,0x000C) # LP clock div

    # BC-BF packet control
    
    SSD2828_WriteReg(ser, 0xC9, HZD<<8  | HPD   )
    SSD2828_WriteReg(ser, 0xCA, CZD<<8  | CPD   )
    SSD2828_WriteReg(ser, 0xCB, CPED<<8 | CPTD  )
    SSD2828_WriteReg(ser, 0xCC, CTD<<8  | HTD   )
    # CD : wake up time, CE : ta-go and ta-get time
    
    SSD2828_WriteReg(ser, 0xDE, 0x0001) # 2 lane

    # ### exit sleep mode, set display on
    SSD2828_WriteReg(ser, 0xB9, 0xC001) # PLL ON
    # SSD2828_WriteReg(ser, 0xB7, (0b00000000)<<8 | (0b00100011)) # hs enable

    SSD2828_WriteReg(ser, 0xBC, 0x0001) # 1 byte data
    SSD2828_WriteReg(ser, 0xBF, 0x0011) # DCS command 0x11
    time.sleep(0.3)
    
    SSD2828_WriteReg(ser, 0xBC, 0x0001) # 1 byte data
    SSD2828_WriteReg(ser, 0xBF, 0x0029) # DCS command 0x29
    time.sleep(0.3)
    

    # bit9:EOT, bit8:ECD, bit6:DCS, bit5:CSS, bit3:VEN, bit2:SLP, bit1:CKE, bit0:HS
    SSD2828_WriteReg(ser, 0xb7, (0b00000000)<<8 | (0b01101011)) # ven

    # time.sleep(3)
    # SSD2828_WriteReg(ser, 0xee,0x0600) #ssd2828 bist

    print(f'[ssd2828_init] init script done')
    
def test_ip7_lp_read(ser:serial.Serial):
    print(f'[test_ip7_lp_read] init script start')
    
    SSD2828_Reset(ser)

    #rgb mode # burst, bit 3-2
    # 00 – Non burst mode with sync pulses, 01 – Non burst mode with sync events, 10 – Burst mode
    # SSD2828_WriteReg(ser, 0xB6, (0b00000000<<8) | (0b00000111)) # 24bit rgb, pclk posedge, video MODE
    SSD2828_WriteReg(ser, 0xB6, (0b00000000<<8) | (0b00001011)) # 24bit rgb, pclk posedge, video MODE ##### test
    
    # bit9:EOT, bit8:ECD, bit6:DCS, bit5:CSS, bit4:HCLK, bit3:VEN, bit2:SLP, bit1:CKE, bit0:HS
    SSD2828_WriteReg(ser, 0xB7, 1<<5) # CSS ref pclk, set before pll on
    SSD2828_WriteReg(ser, 0xB7, (0b00000000)<<8 | (0b01100010)) # hs enable

    SSD2828_WriteReg(ser, 0xB8, 0x0000) # all channel id set to 0

    # B9 PLL control reg

    # pll pclk 50mhz*10 = 500mbps
    # bit15-14: 00 - 62.5-125, 01 - 126-250, 10 - 251-500, 11 - 501-1000
    SSD2828_WriteReg(ser, 0xBA,(0b11000000)<<8 | 12) # pll speed
    # SSD2828_WriteReg(ser, 0xBA,(0b11000000)<<8 | 13) # pll speed #### test
    
    # div 12 840mbps/8/LPD = 8.75 MHZ # div 7, 500mbps/8/LPD = 8.92 MHZ
    SSD2828_WriteReg(ser, 0xBB,0x000C) # LP clock div
    
    SSD2828_WriteReg(ser, 0xDE, 0x0001) # 2 lane

    # ### exit sleep mode, set display on
    SSD2828_WriteReg(ser, 0xB9, 0x0001) # PLL ON ############################################ PLL
    
    # SSD2828_WriteReg(ser, 0xB7, (0b00000000)<<8 | (0b01100011)) # hs enable


    
    # 
    SSD2828_WriteReg(ser, 0xC0, 0x0100) # COP cancel operation

    SSD2828_WriteReg(ser, 0xC1, 16) # read data length
    
    # bit7 ren , bit6: dcs
    # SSD2828_WriteReg(ser, 0xB7, (0b00000000)<<8 | (0b10100010)) # REN, no dcs
    
    
    # SSD2828_WriteReg(ser, 0xBC, 0x0001) # 1byte
    # SSD2828_WriteReg(ser, 0xBF, 0x00b1) # reg b1
    
    # r = SSD2828_ReadReg(ser, 0xC6)
    # # check if the bit 0 is 1
    # succ = (r & 0x01) == 0x01
    # if not succ:
    #     print(f'[test_ip7_lp_read] read data failed')
    #     return
    # else:
    #     print(f'[test_ip7_lp_read] reg 0xC6 read data: {r:#04x}')
        
    # for i in range(10):
    #     d = SSD2828_ReadReg(ser, 0xFF)
    #     print(f'[test_ip7_lp_read] read data {i}: {d:#04x}')
        
    

    SSD2828_WriteReg(ser, 0xBC, 0x0001) # 2 byte data
    SSD2828_WriteReg(ser, 0xBF, 0x0011) # DCS command 0x11
    # time.sleep(1)

    SSD2828_WriteReg(ser, 0xBC, 0x0001) # 2 byte data
    SSD2828_WriteReg(ser, 0xBF, 0x0029) # DCS command 0x29
    # time.sleep(1)
    

    # SSD2828_WriteReg(ser, 0xee,0x0600) #ssd2828 bist
    # bit9:EOT, bit8:ECD, bit6:DCS, bit5:CSS, bit3:VEN, bit2:SLP, bit1:CKE, bit0:HS
    # SSD2828_WriteReg(ser, 0xb7, (0b00000000)<<8 | (0b01101011)) # ven
    
    print(f'[test_ip7_lp_read] init script done')
        
if __name__ == "__main__":
    ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=TIMEOUT)
    time.sleep(2)
    # ssd2828_init(ser)
    # ssd2828_init_ip6_1334_750(ser)
    ssd2828_init_ip7_1334_750(ser)
    # ssd2828_init_ip7_1334_750_test1(ser)
    # test_ip7_lp_read(ser)
    input("Press Enter to exit...")
    ser.close()
