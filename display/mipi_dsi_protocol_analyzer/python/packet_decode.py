import os
from PIL import Image

sync_word = bytes([0x00, 0x00, 0xB8, 0xB8])

dsi_data_type = {
    0x01: {"packet_size": "Short", "desc": "Sync Event, V Sync Start"},
    0x11: {"packet_size": "Short", "desc": "Sync Event, V Sync End"},
    0x21: {"packet_size": "Short", "desc": "Sync Event, H Sync Start"},
    0x31: {"packet_size": "Short", "desc": "Sync Event, H Sync End"},
    0x07: {"packet_size": "Short", "desc": "Compression Mode Command"},
    0x08: {"packet_size": "Short", "desc": "End of Transmission packet (EoTp)"},
    0x02: {"packet_size": "Short", "desc": "Color Mode (CM) Off Command"},
    0x12: {"packet_size": "Short", "desc": "Color Mode (CM) On Command"},
    0x22: {"packet_size": "Short", "desc": "Shut Down Peripheral Command"},
    0x32: {"packet_size": "Short", "desc": "Turn On Peripheral Command"},
    0x03: {"packet_size": "Short", "desc": "Generic Short WRITE, no parameters"},
    0x13: {"packet_size": "Short", "desc": "Generic Short WRITE, 1 parameter"},
    0x23: {"packet_size": "Short", "desc": "Generic Short WRITE, 2 parameters"},
    0x04: {"packet_size": "Short", "desc": "Generic READ, no parameters"},
    0x14: {"packet_size": "Short", "desc": "Generic READ, 1 parameter"},
    0x24: {"packet_size": "Short", "desc": "Generic READ, 2 parameters"},
    0x05: {"packet_size": "Short", "desc": "DCS Short WRITE, no parameters"},
    0x15: {"packet_size": "Short", "desc": "DCS Short WRITE, 1 parameter"},
    0x06: {"packet_size": "Short", "desc": "DCS READ, no parameters"},
    0x16: {"packet_size": "Short", "desc": "Execute Queue"},
    0x37: {"packet_size": "Short", "desc": "Set Maximum Return Packet Size"},
    0x09: {"packet_size": "Long", "desc": "Null Packet, no data"},
    0x19: {"packet_size": "Long", "desc": "Blanking Packet, no data"},
    0x29: {"packet_size": "Long", "desc": "Generic Long Write"},
    0x39: {"packet_size": "Long", "desc": "DCS Long Write/write_LUT Command Packet"},
    0x0A: {"packet_size": "Long", "desc": "Picture Parameter Set"},
    0x0B: {"packet_size": "Long", "desc": "Compressed Pixel Stream"},
    0x0C: {"packet_size": "Long", "desc": "Loosely Packed Pixel Stream, 20-bit YCbCr, 4:2:2 Format"},
    0x1C: {"packet_size": "Long", "desc": "Packed Pixel Stream, 24-bit YCbCr, 4:2:2 Format"},
    0x2C: {"packet_size": "Long", "desc": "Packed Pixel Stream, 16-bit YCbCr, 4:2:2 Format"},
    0x0D: {"packet_size": "Long", "desc": "Packed Pixel Stream, 30-bit RGB, 10-10-10 Format"},
    0x1D: {"packet_size": "Long", "desc": "Packed Pixel Stream, 36-bit RGB, 12-12-12 Format"},
    0x3D: {"packet_size": "Long", "desc": "Packed Pixel Stream, 12-bit YCbCr, 4:2:0 Format"},
    0x0E: {"packet_size": "Long", "desc": "Packed Pixel Stream, 16-bit RGB, 5-6-5 Format"},
    0x1E: {"packet_size": "Long", "desc": "Packed Pixel Stream, 18-bit RGB, 6-6-6 Format"},
    0x2E: {"packet_size": "Long", "desc": "Loosely Packed Pixel Stream, 18-bit RGB, 6-6-6 Format"},
    0x3E: {"packet_size": "Long", "desc": "Packed Pixel Stream, 24-bit RGB, 8-8-8 Format"}
}

def bytes_to_hex_str(data: bytes, max_length: int= None):
    if max_length is None:
        max_length = len(data)
    else:
        max_length = min(max_length, len(data))
    
    hex_string = " ".join(f"{b:02x}" for b in data[:max_length])
    if len(data) > max_length:
        hex_string += " ..."
    return hex_string

def packet_ecc(byte_data, print_debug=True):
    if len(byte_data) != 3:
        raise ValueError("必須是 3 個 byte（24 bits）")

    # 把三個 byte 合成一個 24-bit 整數
    d = int.from_bytes(byte_data, byteorder='little')  # bits: D0 (MSB) ... D23 (LSB)
    if print_debug:
        print(f"Input bytes: {byte_data} -> D0 to D23: {d:024b}")
    

    # 根據你註解裡的規則，列出每個 parity 對應的 bit index
    P = {
        7: [],  # P7 = 0（保留不用）
        6: [],  # P6 = 0（保留不用）
        5: [10,11,12,13,14,15,16,17,18,19,21,22,23],
        4: [4,5,6,7,8,9,16,17,18,19,20,22,23],
        3: [1,2,3,7,8,9,13,14,15,19,20,21,23],
        2: [0,2,3,5,6,9,11,12,15,18,20,21,22],
        1: [0,1,3,4,6,8,10,12,14,17,20,21,22,23],
        0: [0,1,2,4,5,7,10,11,13,16,20,21,22,23]

    }
    ecc = 0
    
    for p, indices in P.items():
        parity = 0
        for index in indices:
            # 使用位元運算來計算 parity
            parity ^= (d >> index) & 1
        # 如果 parity 為 1，則將對應的位元設為 1
        if parity:
            ecc |= (1 << p)
    if print_debug:
        print(f"Calculated ECC: {ecc:08b} (0x{ecc:02x})")
    return ecc

def crc16(
    data: bytes,
    poly: int = 0x1021,
    initial_value: int = 0xFFFF,
    in_reverse: bool = True,
    out_reverse: bool = True,
) -> int:
    crc = initial_value
    for byte in data:
        if in_reverse:
            byte = int(f"{byte:08b}"[::-1], 2)  # Reverse bit order of byte
        crc ^= (byte << 8)
        for _ in range(8):
            if crc & 0x8000:
                crc = (crc << 1) ^ poly
            else:
                crc <<= 1
            crc &= 0xFFFF  # Ensure 16-bit
    if out_reverse:
        crc = int(f"{crc:016b}"[::-1], 2)  # Reverse bit order of CRC
    return crc

def test_crc16():
    gpcTestData0 = bytes([0x00])
    print(f"CRC-16 gcpTestData0: {crc16(gpcTestData0):04X}")

    gpcTestData1 = bytes([0x01])
    print(f"CRC-16 gcpTestData1: {crc16(gpcTestData1):04X}")

    gpcTestData2 = bytes([0xFF, 0x00, 0x00, 0x00, 0x1E, 0xF0, 0x1E, 0xC7,
                        0x4F, 0x82, 0x78, 0xC5, 0x82, 0xE0, 0x8C, 0x70,
                        0xD2, 0x3C, 0x78, 0xE9, 0xFF, 0x00, 0x00, 0x01])
    print(f"CRC-16 gcpTestData2: {crc16(gpcTestData2):04X}")

    gpcTestData3 = bytes([0xFF, 0x00, 0x00, 0x02, 0xB9, 0xDC, 0xF3, 0x72,
                        0xBB, 0xD4, 0xB8, 0x5A, 0xC8, 0x75, 0xC2, 0x7C,
                        0x81, 0xF8, 0x05, 0xDF, 0xFF, 0x00, 0x00, 0x01])
    print(f"CRC-16 gcpTestData3: {crc16(gpcTestData3):04X}")

def dphy_stream_from_file(file_path):
    # 將資料分割回原本的 2 個 lane
    # 每 4 個 byte 為一組，其中前兩個 byte 為 lane1，後兩個 byte 為 lane0 
    with open(file_path, 'rb') as f:
        data = f.read()
    print('[dphy_stream_from_file] read byte form file', len(data), type(data), bytes_to_hex_str(data, 32))

    # 檢查總長度是否為偶數，否則無法每2個byte配對
    if len(data) % 2 != 0:
        raise ValueError("資料長度不是偶數，無法每 2 byte 拆分")

    lane0 = bytearray()
    lane1 = bytearray()
    # 每2個byte一組，拆成低/高位元byte
    for i in range(0, len(data), 4):
        group = data[i:i+4]
        lane0.extend(group[:2])  # 前兩個 byte
        lane1.extend(group[2:])  # 後兩個 byte

    print('[dphy_stream_from_file] lane0 長度:', len(lane0), '= MB:', len(lane0) / (1024 * 1024))
    print('[dphy_stream_from_file] lane1 長度:', len(lane1), '= MB:', len(lane1) / (1024 * 1024))
    print("[dphy_stream_from_file] lane0:" , bytes_to_hex_str(lane0, 32))
    print("[dphy_stream_from_file] lane1:" , bytes_to_hex_str(lane1, 32))

    # Merge lanes into a single stream
    # merge [lane0[0] , lane1[0], lane0[1], lane1[1], ...]
    merged_stream = bytearray()
    for l0, l1 in zip(lane0, lane1):
        merged_stream.append(l0)
        merged_stream.append(l1)
    print("[dphy_stream_from_file] merged_stream:", bytes_to_hex_str(merged_stream, 64))

    return merged_stream

def split_to_burst_list(merged_stream: bytes):
    # Split by sync word (00 00 b8 b8)
    burst_list = []
    
    # find all index of sync word 
    sync_word_pos = []
    st = 0
    while True:
        idx = merged_stream.find(sync_word, st)
        if idx == -1:
            break
        sync_word_pos.append(idx)
        st = idx + len(sync_word)
        
    # print info of sync word positions
    print(f"[split_to_burst_list] Found {len(sync_word_pos)} sync words")

    # split the merged stream into bursts by positions of sync words
    for i in range(len(sync_word_pos) - 1):
        start = sync_word_pos[i]
        end = sync_word_pos[i + 1]
        burst_list.append(merged_stream[start:end])
        
    print(f"[split_to_burst_list] burst_list type: {type(burst_list)}, length: {len(burst_list)}")
    # print first 64 bytes of the first burst
    for l in burst_list[:4]:
        print('[split_to_burst_list]', bytes_to_hex_str(l[:64]))

    return burst_list

def save_burst_list_to_file(burst_list, file_path):
    # save burst index 8 to file
    # with open('burst_index_8.txt', 'w') as f:
    #     b = burst_list[8]
    #     f.write(f"burst_index_8: {bytes_to_hex_str(b)}\n")
    pass

def decode_packet(burst_list: list[bytes]):
    '''
        '{burst_index}-{packet_index}'
        burst index in stream
        packet index in burst
    '''
    
    packets = []
    
    for i, burst in enumerate(burst_list):
        # is start with sync word?
        if not burst.startswith(sync_word):
            print(f"[decode_packet] Burst {i} does not start with sync word, skipping...")
            continue
        # remove sync word
        burst = burst[len(sync_word):]
        

        check_pos = 0
        packet_cnt = 0
        crc_mismatch_cnt = 0
        
        while check_pos + 4 <= len(burst):
            header = burst[check_pos:check_pos + 4]
            data_type = header[0]
            ecc = packet_ecc(header[0:3], print_debug=False)
            if ecc != header[3]:
                if packet_cnt == 0:
                    print(f"[decode_packet] [ERR] No valid packets found in burst {i}, packet {packet_cnt}, skipping...")
                check_pos += 1
                continue
            elif data_type not in dsi_data_type:
                print(f"[decode_packet] [ERR] Unknown data type {data_type:02x} in burst {i}, packet {packet_cnt}, Header: {bytes_to_hex_str(header)},skipping...")
                check_pos += 1
                continue
            elif dsi_data_type[data_type]["packet_size"] == "Short":
                packets.append({
                    'burst_ind': i,
                    'packet_ind': packet_cnt,
                    'type': f"{data_type:02x}",
                    'desc': dsi_data_type[data_type]["desc"],
                    'crc_ok': None,
                    'data_len': 2,
                    'data': bytes_to_hex_str(header[1:3], max_length=2),
                })
                packet_cnt += 1
                check_pos += 4
                
            elif dsi_data_type[data_type]["packet_size"] == "Long":
                length = int.from_bytes(header[1:3], byteorder='little')

                data_start = check_pos + 4
                data_end = data_start + length
                checksum_start = data_end
                checksum_end = checksum_start + 2
                if checksum_end > len(burst):
                    print(f"[decode_packet] [ERR] Long packet {data_type:02x} in burst {i} exceeds burst length, skipping...")
                    check_pos += 1
                    continue

                data = burst[data_start:data_end]
                checksum = burst[checksum_start:checksum_end]
                
                # calculate CRC16 for the data
                crc = crc16(data)
                crc_ok = crc == int.from_bytes(checksum, byteorder='little')
                if not crc_ok:
                    # print(f"[decode_packet] [ERR] CRC mismatch in burst {i}, data type {data_type:02x}: expected {crc:04x}, got {int.from_bytes(checksum, byteorder='little'):04x}")
                    crc_mismatch_cnt += 1
                packets.append({
                    'burst_ind': i,
                    'packet_ind': packet_cnt,
                    'type': f"{data_type:02x}",
                    'desc': dsi_data_type[data_type]["desc"],
                    'crc_ok': crc_ok,
                    'data_len': length,
                    'data': bytes_to_hex_str(data),
                })
                packet_cnt += 1
                check_pos += length + 6  # 4 bytes header + length + 2 bytes checksum

            else:
                print(f"[decode_packet] [ERR] Unknown packet size")
                
        if crc_mismatch_cnt > 0:
            print(f"[decode_packet] [ERR] Burst {i} contains {crc_mismatch_cnt} packets with CRC mismatch")

    return packets

def save_packets_to_file(packets, file_path):
    with open(file_path, 'w') as f:
        for packet in packets:
            f.write(f"{packet}\n")
    print(f"[save_packets_to_file] Saved {len(packets)} packets to {file_path}")

def save_packets_filter_datatype(packets, file_path, filter=['09']):
    with open(file_path, 'w') as f:
        for packet in packets:
            if packet['type'] not in filter:
                f.write(f"{packet}\n")
    print(f"[save_packets_filter_datatype] Saved {len(packets)} packets with filter {filter} to {file_path}")

def load_packets_from_file(file_path):
    packets = []
    with open(file_path, 'r') as f:
        for line in f:
            if line.strip():
                packet = eval(line.strip())
                packets.append(packet)
    print(f"[load_packets_from_file] Loaded {len(packets)} packets from {file_path}")
    return packets

def packets_analyze(packets):
    # windows size 0, repeat_packet: [1, [{'type': 'type', 'desc': desc}]]
    # windows size 1, repeat_packet: [repeat, [{'type': 'type', 'desc': desc}]]
    # windows size 2, repeat_packet: [repeat, [{'type': 'type', 'desc': desc},{'type': 'type', 'desc': desc}]]

    # merge repeat, key window size, value is a list of packets
    analyze_dict = {}
    
    # default save repeat_num 1
    repeat_packet = []
    for packet in packets:
        tp = packet['type']
        desc = packet['desc']
        repeat_packet.append([1, [{'type': tp, 'desc': desc}]])
    analyze_dict[0] = repeat_packet

    max_merge_windows_size = 5
    # merge packets with same type and desc
    for w_size in range(1, max_merge_windows_size + 1):
        last_merged = analyze_dict[w_size-1]
        analyze_dict[w_size] = []

        now_index = 0
        while now_index < len(last_merged):
            
            repeat_cnt = 1
            while True:
                g1_start = now_index
                g1_end = now_index + w_size
                g2_start = now_index + w_size*repeat_cnt
                g2_end = now_index + w_size*(repeat_cnt + 1)

                if g1_end > len(last_merged) or g2_end > len(last_merged):
                    break
                
                g1 = last_merged[g1_start:g1_end]
                g2 = last_merged[g2_start:g2_end]
                g1_merge_packet = []
                g2_merge_packet = []
                for p1, p2 in zip(g1, g2):
                    g1_merge_packet.extend(p1[1])
                    g2_merge_packet.extend(p2[1])
                    
                # print(f"Checking group1: {g1_merge_packet}, group2: {g2_merge_packet}")
                if g1_merge_packet == g2_merge_packet:
                    repeat_cnt += 1
                else:
                    break
            
            if repeat_cnt > 1: # found repeat
                g1_start = now_index
                g1_end = now_index + w_size
                g1 = last_merged[g1_start:g1_end]
                new_packet_list = []
                for p in g1:
                    new_packet_list.extend(p[1])
                new_packet = [repeat_cnt, new_packet_list]
                analyze_dict[w_size].append(new_packet)
                now_index += w_size * repeat_cnt
            else: # no repeat
                analyze_dict[w_size].append(last_merged[now_index])
                now_index += 1
                
    return analyze_dict
            
def decode_image(packets, output_dir):
    frames = []
    
    lines = []
    line = bytearray()
    for packet in packets:
        # print(f"[decode_image] Processing packet: {packet}")
        
        if packet['type'] == '01':
            # V Sync Start, start a new frame
            if line:
                lines.append(line)
                line = bytearray()
            if lines:
                frames.append(lines)
                lines = []
            # print(f"[decode_image] V Sync Start, starting a new frame")
        elif packet['type'] == '21':
            # H Sync Start, start a new line
            if line:
                lines.append(line)
                line = bytearray()
            # print(f"[decode_image] H Sync Start, starting a new line")
        elif packet['type'] in ['3e']:
            line += bytes.fromhex(packet['data'])

    if line:
        lines.append(line)
    if lines:
        frames.append(lines)

    print(f"[decode_image] Total frames decoded: {len(frames)}")

    return frames

def draw_image(frames, output_dir):
    # print the frame info first
    # how many frame , line, byte
    print(f"[draw_image] Total frames: {len(frames)}")
    for i, frame in enumerate(frames):
        print(f"[draw_image] Frame {i}: {len(frame)} lines")
        # for j, line in enumerate(frame):
        #     print(f"[draw_image]   Line {j}: {len(line)} bytes")
    
    
    print(len(frames))
    print(len(frames[0]))
    
    # draw all frames to image
    for i, frame in enumerate(frames):
        # create a new image with mode 'RGB' and size (width, height)
        # width = len(frame[0]) // 3  # Assuming each pixel is represented by 3 bytes (RGB)
        # get max width of all lines
        max_width = max(len(line) for line in frame)// 3
        print(f"[draw_image] Frame {i} max width: {max_width}")
        height = len(frame)
        img = Image.new('RGB', (max_width, height))
        for y, line in enumerate(frame):
            for x in range(0, len(line), 3):
                if x + 2 < len(line):
                    r = line[x]
                    g = line[x + 1]
                    b = line[x + 2]
                    img.putpixel((x // 3, y), (r, g, b))
        
        # img.show()
        img.save(f"{output_dir}/frame_{i}.png")

if __name__ == "__main__":

    
    bin_path = 'data/v3_single_port_fifo/data_20250721_164230_hello.bin'
    # bin_path = 'data/v3_single_port_fifo/data_c_boot.bin'
    # bin_path = 'data/v3_single_port_fifo/data_20250721_164320_hello.bin'
    # bin_path = 'data/v3_single_port_fifo/data_20250721_164414.bin'
    # bin_path = 'data/v3_single_port_fifo/data_20250721_164525.bin'
    # bin_path = 'data/v3_single_port_fifo_1/data_20250722_010001.bin'
    
    
    bin_file_name = os.path.basename(bin_path).replace('.bin', '')    
    print(f"[main] bin_file_name: {bin_file_name}")

    output_dir = f'.output/{bin_file_name}'    
    os.makedirs(output_dir, exist_ok=True)
    decode_path = f'{output_dir}/{bin_file_name}_decode.txt'
    decode_filter_path = f'{output_dir}/{bin_file_name}_decode_filter.txt'
    
    if 1:
        merged_stream = dphy_stream_from_file(bin_path)
        burst_list = split_to_burst_list(merged_stream)
        packets = decode_packet(burst_list)

        save_packets_to_file(packets, decode_path)
        save_packets_filter_datatype(packets, decode_filter_path, filter=['09'])
    
    # load from file 
    packets = load_packets_from_file(decode_path)
    print(f"Total packets loaded: {len(packets)}")


    # analyze packets
    if 1:
        analyze_dict = packets_analyze(packets)
                
        # save analyze_dict to file, each windows size in a separate file
        for w_size, packet_list in analyze_dict.items():
            fn = f'{output_dir}/{bin_file_name}_analyze_wsize_{w_size}.txt'
            with open(fn, 'w') as f:
                for packet in packet_list:
                    f.write(f"{packet}\n")
            print(f"[packets_analyze] Saved {len(packet_list)} packets for window size {w_size} to {fn}")
            
    # decode image from packets
    if 1:
        frames = decode_image(packets, output_dir)
        draw_image(frames, output_dir)
