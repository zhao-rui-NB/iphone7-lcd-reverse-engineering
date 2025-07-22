import struct
file_path = './data/output.bin'

with open(file_path, 'rb') as f:
    data = f.read()
print(len(data) , type(data))
def parse_bytes_to_uint_list(data_bytes):
    result = []
    for i in range(0, len(data_bytes), 4):
        chunk = data_bytes[i:i+4]
        if len(chunk) < 4:
            break  # 不足4 byte 就略過
        value = struct.unpack('<I', chunk)[0]
        result.append(value)
    return result




# data_bytes = b'\x01\x00\x00\x00\x02\x00\x00\x00' * 2
list = parse_bytes_to_uint_list(data)
list

err = 0
for i in range(len(list)-1):
    if i!=0 and list[i]+1 != list[i+1]:
        err = err +1
        print(f"err i: {i}, {i+1} {list[i]:08x} {list[i+1]:08x}")
        
        
print(f"err {err}")
