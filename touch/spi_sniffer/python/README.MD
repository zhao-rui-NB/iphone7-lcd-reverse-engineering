# IPHONE7 touch 


## 格式
```
spi miso 接收資料

packet: header + payload + packet checksum(2B)

header: 0xEA + (0x01 or 0x02 交替) + packet length without header (2B) + header checksum(1B)

payload: touch state(24B) + N*(touch point(4+26B)) 

touch state(24B):
    1: packet serial number(1B), 每次递增
    4-7: scan count(4B) (每次递增大約 9)
    12-13: 手指區域(2B)
    16: 手指數量(1B)
    18-19: 相對起點移動數值(2B)
    20: 接觸狀態(1B), 0x00: 無接觸, 0x10: 有接觸, 0x80: 隔空

touch point(30B):
    0: 手指 ID(1B), 未確定
    1: 手指距離(1B): 0x04: 完全接觸, 0x02: 隔空,0x00: 無接觸
    4-5: 手指位置 X 座標(2B)
    6-7: 手指位置 Y 座標(2B)
    8-9: 手指位置 X speed(2B)
    10-11: 手指位置 Y speed(2B)
    12-21: 處點範圍距離(2B*5), 有5個長度尚未確定
    26-27: 3D touch 壓力感測值(2B)
    
```


# SPI Touch IC 通訊協定說明

本文件說明 SPI MISO 接收資料格式，針對逆向工程過程中所解析的內容，包含封包結構與各個欄位的意義。

## 封包結構

每筆封包資料格式如下：

```
Packet = Header (6 bytes) + Payload (可變長) + Packet Checksum (2 bytes)
```

---

### 1. Header (6 Bytes)

| 位元組位置 | 說明 |
|------------|------|
| 0          | 固定值 `0xEA` |
| 1          | 封包類型，交替出現 `0x01` 與 `0x02` |
| 2~3        | Packet 長度（不含 Header），2 Bytes, little endian |
| 4          | Header Checksum，1 Byte，計算方式如下 |
| 5          | 保留位元或未定義 |

#### ✅ Header Checksum 計算方式

```python
def calc_checksum_header(data_bytes):
    total = sum(data_bytes) & 0xFF  # 8-bit 加總
    checksum = (~total + 1) & 0xFF  # 取反加一（Two's complement）
    return checksum
```

範例：

```python
data = 'EA 02 38 00'
# 對應 byte list: [0xEA, 0x02, 0x38, 0x00]
# 計算後 checksum = 0xDC
```

---

### 2. Payload 結構

```
Payload = Touch State (24 bytes) + N * Touch Point (30 bytes)
```

#### Touch State (24 Bytes)

| 位元組位置 | 說明 |
|------------|------|
| 1          | 封包序號，1 Byte，每次遞增 |
| 4~7        | 掃描計數值，4 Bytes，每次遞增約 9 |
| 12~13      | 手指區域，2 Bytes，意義未明 |
| 16         | 偵測到的手指數量，1 Byte |
| 18~19      | 相對起點移動數值，2 Bytes |
| 20         | 接觸狀態，1 Byte：<br>`0x00`：無接觸<br>`0x10`：有接觸<br>`0x80`：隔空接近 |

> 其他位元組尚未確認其用途。

---

#### Touch Point (每個 30 Bytes)

每個手指資料包含以下欄位：

| 位元組位置 | 說明 |
|------------|------|
| 0          | 手指 ID，1 Byte，尚未確定其意義 |
| 1          | 手指距離狀態，1 Byte：<br>`0x04`：完全接觸<br>`0x02`：隔空<br>`0x00`：無接觸 |
| 4~5        | X 座標位置，2 Bytes |
| 6~7        | Y 座標位置，2 Bytes |
| 8~9        | X 軸速度，2 Bytes |
| 10~11      | Y 軸速度，2 Bytes |
| 12~21      | 處點範圍距離 (共 5 組 2 Bytes)，用途待確認 |
| 26~27      | 3D Touch 壓力感測值，2 Bytes |

> 其他位元組尚未確認其用途。

---

### 3. Packet Checksum (2 Bytes)

封包尾端包含 2 Bytes 的 Checksum，用於驗證整個封包資料正確性。

#### ✅ Packet Checksum 計算方式

```python
def calc_checksum_packet(data_bytes):
    total = sum(data_bytes) & 0xFFFF  # 16-bit 加總
    checksum = (total - 0x0200) & 0xFFFF  # 減去 0x0200（512）
    return checksum
```

範例：

```python
data = '''
EA 02 38 00 DC 44 4C 18 02 82 61 A0 02 00 02 07
97 00 00 00 00 01 1E F8 FF 00 00 00 00 01 00 02
01 D0 03 B7 0F 00 00 00 00 00 00 00 00 00 40 00
00 00 00 00 00 00 00 00 00 00 00
'''

# 對應 checksum = C2 06
```

---

## 補充說明

- 所有 multi-byte 數值皆為 **Little Endian** 格式。
- 尚有多個位元組位置與用途待進一步分析與驗證。
- 此文件為逆向工程過程紀錄。

