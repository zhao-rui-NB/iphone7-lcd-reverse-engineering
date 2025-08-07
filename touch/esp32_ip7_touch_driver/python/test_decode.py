import serial
import time


from TouchDecode_IP7 import TouchDecode_IP7
from read_esp32_spi import *




if __name__ == "__main__":
    # 設定 serial port
    ser = serial.Serial('COM23', baudrate=115200, timeout=1)

    try:
        print("開始接收...")

        while True:
            packet = read_packet(ser)
            parsed_packet = decode_packet(packet)

            print(f"Received packet: {' '.join(f'{x:02X}' for x in parsed_packet)}")
            
            if len(parsed_packet) <= 16:
                continue
            
            
            touch_decoder = TouchDecode_IP7(parsed_packet)
            
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
    

