import serial
import time


from TouchDecode_IP7 import TouchDecode_IP7
from read_fpga_spi import *




if __name__ == "__main__":
    # 設定 serial port
    ser = serial.Serial('COM13', baudrate=1000000, timeout=1)

    try:
        print("開始接收...")

        while True:
            packet = read_packet(ser)
            parsed_packet = decode_packet(packet)
            split_data = split_mosi_miso(parsed_packet)

            if split_data is None:
                print("❌ MOSI 和 MISO 資料錯誤")
                continue

            mosi = split_data['mosi']
            miso = split_data['miso']
            # print(f"📦 MISO len: {len(miso)}, {' '.join(f'{x:02X}' for x in miso)}")
            

            
            if len(miso) <= 16:
                continue
            
            touch_decoder = TouchDecode_IP7(miso)
            
            header_valid = touch_decoder.is_valid_header_checksum()
            packet_valid = touch_decoder.is_valid_packet_checksum()
            if not header_valid or not packet_valid:
                print("❌ 觸控資料包錯誤")
                continue
            
            touch_state = touch_decoder.get_touch_state()
            point_count = touch_decoder.get_touch_count()
            for i in range(point_count):
                touch_point = touch_decoder.get_touch_point(i)
                if touch_point:
                    print(f"Touch Point {i}: {touch_point}")
                else:
                    print(f"Touch Point {i} 資料錯誤")




    except KeyboardInterrupt:
        print("停止接收")
        ser.close()
    

