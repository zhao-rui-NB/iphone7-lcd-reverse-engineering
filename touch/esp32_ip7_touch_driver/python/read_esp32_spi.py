import serial
import time

start_time = time.time()    

def read_packet(ser: serial.Serial):
    """讀取封包"""
    HEADER = [0x94, 0x87]
    END = [0x04, 0x87]
    
    buffer = []
    packet = []
    in_packet = False
    
    while True:
        byte = ser.read(1)
        if not byte:
            continue
        value = byte[0]

        # 將資料緩衝
        buffer.append(value)

        # 如果未進入封包模式，檢查是否為封包開頭
        if not in_packet:
            if len(buffer) >= 2 and buffer[-2:] == HEADER:
                in_packet = True
                packet = HEADER.copy()
        else:
            packet.append(value)
            if len(packet) >= 2 and packet[-2:] == END:
                # 完整封包讀取完成
                return packet

def decode_packet(packet):
    """解析封包"""
    
    if packet is None:
        print("❌ Packet is None")
        return None
    
    if len(packet) < 4:
        print("packet too short")
        return None
    if packet[:2] != [0x94, 0x87] or packet[-2:] != [0x04, 0x87]:
        print("packet header or footer mismatch")
        return None
    
    # calc checksum last 16 bits, need include header but not footer
    # 0:header, 1:header, -4:checksum  -3:checksum -2:footer -1:footer 
    checksum1 = (sum(packet[:-4]) & 0xFFFF)
    checksum2 = (packet[-4] << 8 | packet[-3]) & 0xFFFF
    
    if checksum1 != checksum2:
        print("❌ checksum mismatch")
        return None
    else:
        # print("✅ checksum ok")
        return packet[2:-4]  # 去除頭尾和校驗和部分

def move_cursor(row, col):
    print(f"\033[{row};{col}H", end='')

def clear_screen():
    print("\033[2J", end='')  # 清空整個螢幕
    move_cursor(1, 1)

def print_packet_info(row, packet_len, mosi, miso):
    def format_data_bytes(data):
        lines = []
        for i in range(0, len(data), 16):
            line = ' '.join(f'{b:02X}' for b in data[i:i+16])
            lines.append(line)
        return lines

    mosi_lines = format_data_bytes(mosi)
    miso_lines = format_data_bytes(miso)

    total_lines = 1 + 1 + len(mosi_lines) + 1 + len(miso_lines)  # 標題 + MOSI/MISO 長度 + 資料行

    # 印出封包長度
    move_cursor(row, 1)
    print("\033[K", end='')  # 清除整行
    print(f"📦 收到長度 {packet_len}byte, time:{time.time() - start_time:.3f}s".ljust(100))

    # 印 MOSI
    move_cursor(row + 1, 1)
    print("\033[K", end='')  # 清除整行
    print(f"MOSI len: {len(mosi)}")
    for i, line in enumerate(mosi_lines):
        move_cursor(row + 2 + i, 1)
        print("\033[K", end='')  # 清除整行
        print(f"  {line}")

    # 印 MISO
    miso_start_row = row + 2 + len(mosi_lines)
    move_cursor(miso_start_row, 1)
    print("\033[K", end='')  # 清除整行
    print(f"MISO len: {len(miso)}")
    for i, line in enumerate(miso_lines):
        move_cursor(miso_start_row + 1 + i, 1)
        print("\033[K", end='')  # 清除整行
        print(f"  {line}")

    return total_lines
        

if __name__ == "__main__":
    # 設定 serial port
    ser = serial.Serial('COM23', baudrate=115200, timeout=1)

    clear_screen()
    last_dynamic_lines = 0
    try:
        print("開始接收...")

        while True:
            packet = read_packet(ser)
            parsed_packet = decode_packet(packet)

            if parsed_packet is not None:
                mosi = [0] * len(parsed_packet) 
                miso = parsed_packet


                # 清除上一個不定長封包顯示的範圍
                for i in range(last_dynamic_lines):
                    move_cursor(3 + i, 1)
                    print("\033[K", end='')  # 清除整行    
                
                last_dynamic_lines = print_packet_info(row=3, packet_len=len(packet), mosi=mosi, miso=miso)
                move_cursor(25, 8)
            else:
                move_cursor(25, 8)
                print("❌ MOSI 和 MISO 資料錯誤".ljust(100))


    except KeyboardInterrupt:
        move_cursor(25, 1)
        print("停止接收")
        ser.close()
    

