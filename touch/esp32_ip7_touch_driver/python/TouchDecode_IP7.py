




class TouchDecode_IP7:
    def __init__(self, data: bytes):
        if len(data) < 8:
            print('[TouchDecode_IP7] Data too short to decode')
            return
        self.raw = data
        self.header = []
        self.payload = []
        self.checksum_bytes = []
        
        self.decode()
        
        # print all for debug 
        # print(f"Raw data: {' '.join(f'{x:02X}' for x in self.raw)}")
        # print(f"Header: {' '.join(f'{x:02X}' for x in self.header)}")
        # print(f"Payload: {' '.join(f'{x:02X}' for x in self.payload)}")
        # print(f"Checksum bytes: {' '.join(f'{x:02X}' for x in self.checksum_bytes)}")

    @staticmethod
    def _to_u16(b): 
        return b[0] | (b[1] << 8)
    # @staticmethod
    # def _to_i16(b): 
    #     val = b[0] | (b[1] << 8)
    #     return val if val < 0x8000 else val - 0x10000


    def decode(self):
        """解析封包"""
        if len(self.raw) < 8:
            print("❌ Data too short to decode")
            return
        
        payload_len = self._to_u16(self.raw[2:4])
        if len(self.raw) < (5 + payload_len):
            print("❌ Data length mismatch")
            return
        
        
        header_start = 0
        header_end = 5

        payload_start = 5
        payload_end = 5 + payload_len - 2

        checksum_start = payload_end
        checksum_end = payload_end + 2

        self.header = self.raw[header_start:header_end]
        self.payload = self.raw[payload_start:payload_end]
        self.checksum_bytes = self.raw[checksum_start:checksum_end]
        # print(f"Decoded header: {' '.join(f'{x:02X}' for x in self.header)}")
        # print(f"Decoded payload: {' '.join(f'{x:02X}' for x in self.payload)}")
        # print(f"Decoded checksum bytes: {' '.join(f'{x:02X}' for x in self.checksum_bytes)}")
        # return self.header, self.payload, self.checksum_bytes
        
        
        
    # Header 檢查
    def header_length(self):
        return self._to_u16(self.header[2:4])

    def header_checksum(self):
        total = sum(self.header[0:4]) & 0xFF
        return (~total + 1) & 0xFF

    def is_valid_header_checksum(self):
        if len(self.header) < 5:
            print("❌ Header too short for checksum validation")
            return False

        return self.header[4] == self.header_checksum()

    # Packet 檢查
    def packet_checksum(self):
        total = sum(self.header + self.payload) & 0xFFFF
        res = (total - 0x0200) & 0xFFFF
        return res

    def is_valid_packet_checksum(self):
        if len(self.checksum_bytes) < 2:
            print("❌ Checksum bytes too short for validation")
            return False
        return self._to_u16(self.checksum_bytes) == self.packet_checksum()

    # Touch State
    def get_touch_state(self):
        if len(self.payload) < 24:
            return None
        ts = self.payload[:24]
        return {
            "serial": ts[1],
            "scan_count": int.from_bytes(ts[4:8], "little"),
            "touch_area": self._to_u16(ts[12:14]),
            "touch_count": ts[16],
            "delta_move": self._to_u16(ts[18:20]),
            "touch_status": ts[20]
        }

    # 取得單個 touch point
    def get_touch_point(self, index):
        ts = self.get_touch_state()
        if not ts or index >= ts["touch_count"]:
            return None
        base = 24 + index * 30
        tp = self.payload[base:base+30]
        if len(tp) < 30:
            return None
        return {
            "id": tp[0],
            "distance": tp[1],
            "x": self._to_u16(tp[4:6]),
            "y": self._to_u16(tp[6:8]),
            "x_speed": self._to_u16(tp[8:10]),
            "y_speed": self._to_u16(tp[10:12]),
            "ranges": [self._to_u16(tp[i:i+2]) for i in range(12, 22, 2)],
            "pressure": self._to_u16(tp[26:28])
        }

    def get_touch_count(self):
        ts = self.get_touch_state()
        return ts["touch_count"] if ts else 0



if __name__ == "__main__":
    # 載入封包
    raw_hex = '''
    EA 02 38 00 DC 44 4C 18 02 82 61 A0 02 00 02 07
    97 00 00 00 00 01 1E F8 FF 00 00 00 00 01 00 02
    01 D0 03 B7 0F 00 00 00 00 00 00 00 00 00 40 00
    00 00 00 00 00 00 00 00 00 00 00 C2 06
    '''.replace(' ', '').replace('\n', '')

    data = [int(raw_hex[i:i+2], 16) for i in range(0, len(raw_hex), 2)]
    pkt = TouchDecode_IP7(data)

    # 檢查 checksum
    print("Header checksum ok?", pkt.is_valid_header_checksum())
    print("Packet checksum ok?", pkt.is_valid_packet_checksum())

    # 取得 touch state
    ts = pkt.get_touch_state()
    print("Touch state:", ts)

    # 取得所有 touch points
    touch_count = pkt.get_touch_count()
    print(f"Touch point count: {touch_count}")
    
    # 取得每個 touch point 的詳細資訊
    for i in range(touch_count):
        tp = pkt.get_touch_point(i)
        print(f"Touch point {i}: {tp}")
        
        