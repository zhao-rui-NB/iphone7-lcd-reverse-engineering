import cv2
import serial
import threading
import time
import numpy as np

from TouchDecode_IP7 import TouchDecode_IP7
from read_fpga_spi import read_packet, decode_packet, split_mosi_miso


class OpenCVTouchVisualizer:
    def __init__(self, width=750, height=1334, adc_max_x=65535, adc_max_y=65535):
        self.width = width
        self.height = height
        self.adc_max_x = adc_max_x
        self.adc_max_y = adc_max_y

        self.window_name = "Touch Visualizer"
        self.points = []
        self.lock = threading.Lock()

        cv2.namedWindow(self.window_name)
        self.thread = threading.Thread(target=self.serial_loop, daemon=True)
        self.thread.start()

    def serial_loop(self):
        try:
            ser = serial.Serial('COM13', baudrate=1000000, timeout=1)
            print("開始接收串口資料...")

            while True:
                packet = read_packet(ser)
                parsed_packet = decode_packet(packet)
                split_data = split_mosi_miso(parsed_packet)

                if not split_data:
                    continue

                miso = split_data['miso']
                if len(miso) <= 16:
                    continue

                decoder = TouchDecode_IP7(miso)
                if not decoder.is_valid_header_checksum() or not decoder.is_valid_packet_checksum():
                    continue

                new_points = []
                for i in range(decoder.get_touch_count()):
                    p = decoder.get_touch_point(i)
                    if p:
                        new_points.append(p)
                        print(f"Touch Point {i}: {p}")

                with self.lock:
                    self.points = new_points

                time.sleep(0.005)

        except Exception as e:
            print("串口錯誤:", e)
    
    def draw(self):
        while True:
            frame = np.zeros((self.height, self.width, 3), dtype=np.uint8)

            with self.lock:
                points_copy = list(self.points)

            for p in points_copy:
                if p['distance'] == 0:
                    continue

                # 基本資料
                raw_x = p['x']
                raw_y = p['y']
                pressure = p['pressure']
                finger_id = p['id']
                ranges = p.get('ranges', [0, 0, 0, 0, 0])
                avg_range = sum(ranges) / len(ranges) if ranges else 0

                # 將 ADC 值縮放到畫面
                norm_x = raw_x / self.adc_max_x
                norm_y = 1.0 - (raw_y / self.adc_max_y)
                norm_x = max(0.0, min(norm_x, 1.0))
                norm_y = max(0.0, min(norm_y, 1.0))
                x = int(norm_x * self.width)
                y = int(norm_y * self.height)

                # 根據 range 平均值調整圓大小
                size_scale = min(max(ranges[3] / 100, 0.3), 5)
                radius = int(15 * size_scale)

                # 根據壓力調整顏色
                if pressure < 50:
                    color = (100, 200, 255)  # 淺藍
                elif pressure < 100:
                    color = (0, 255, 0)      # 綠
                elif pressure < 150:
                    color = (0, 255, 255)    # 黃
                else:
                    color = (0, 0, 255)      # 紅

                # 畫觸控點
                cv2.circle(frame, (x, y), radius, color, -1)

                # 顯示 ID
                cv2.putText(frame, f"ID:{finger_id}", (x - 15, y - radius - 5),
                            cv2.FONT_HERSHEY_SIMPLEX, 0.7, (255, 255, 255), 1)

                # 顯示 5 個 ranges 值在右上角
                for i, r in enumerate(ranges):
                    text = f"R{i}:{r}"
                    text_x = x + radius + 10
                    text_y = y + i * 18 - 30
                    cv2.putText(frame, text, (text_x, text_y),
                                cv2.FONT_HERSHEY_PLAIN, 1.2, (180, 180, 180), 1)
                    
                # print pressure
                # print(f"Pressure: {pressure}, X: {raw_x}, Y: {raw_y}, Size: {size_scale:.2f}, Avg Range: {avg_range:.2f}")
                # cv2.putText(frame, f"Pressure: {pressure}", (10, 30),
                #             cv2.FONT_HERSHEY_SIMPLEX, 0.7, (255, 255, 255), 1)
                

            cv2.imshow(self.window_name, frame)
            key = cv2.waitKey(1)
            if key == 27:
                break

        cv2.destroyAllWindows()


if __name__ == "__main__":
    # 你可以手動修改 adc_max_x / adc_max_y 來微調比例
    app = OpenCVTouchVisualizer(
        width=750,
        height=1334,
        adc_max_x=5530,  # 預設 65535，但你可以觀察後調整
        adc_max_y=10120
    )
    app.draw()


    # size_scale = min(max(avg_range / 4096 *3, 0.15), 100)
