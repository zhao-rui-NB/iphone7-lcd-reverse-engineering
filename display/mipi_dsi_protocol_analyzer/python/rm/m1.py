import ctypes
import time
import struct

# 載入 CH375 DLL
ch375dll = ctypes.WinDLL("CH375DLL64.dll")

# 常數
DEVICE_INDEX = 0
ENDPOINT_IN = 1
BUF_SIZE = 4096 * 4096  # 2MB

# 函式對應定義
ch375dll.CH375OpenDevice.argtypes = [ctypes.c_ulong]
ch375dll.CH375OpenDevice.restype = ctypes.c_void_p

ch375dll.CH375CloseDevice.argtypes = [ctypes.c_ulong]

ch375dll.CH375ReadEndP.argtypes = [ctypes.c_ulong, ctypes.c_ulong, ctypes.c_void_p, ctypes.POINTER(ctypes.c_ulong)]
ch375dll.CH375ReadEndP.restype = ctypes.c_bool

def open_device():
    handle = ch375dll.CH375OpenDevice(DEVICE_INDEX)
    if handle == 0 or handle == ctypes.c_void_p(-1).value:
        print("CH375OpenDevice failed.")
        return None
    print("CH375OpenDevice success.")
    return handle

def close_device():
    ch375dll.CH375CloseDevice(DEVICE_INDEX)

def read_endpoint(ep: int, buffer_len: int = BUF_SIZE):
    read_buffer = (ctypes.c_ubyte * buffer_len)()
    length = ctypes.c_ulong(buffer_len)
    success = ch375dll.CH375ReadEndP(DEVICE_INDEX, ep, read_buffer, ctypes.byref(length))
    return success, bytes(read_buffer[:length.value]), length.value

def print_buffer(data: bytes):
    p_len = min(256, len(data))
    for i in range(0, p_len, 4):
        if i % 32 == 0 and i != 0:
            print()
        value = struct.unpack_from("<I", data, i)[0]
        print(f"0x{value:08X}, ", end="")
    print("\n")

def test_loop():
    total_bytes = 0
    test_count = 0
    start_time = time.time()

    while True:
        success, data, length = read_endpoint(ENDPOINT_IN)
        if not success:
            print("CH375ReadEndP error.")
            break

        total_bytes += length
        test_count += 1

        if test_count % 10 == 0:
            print(f"receive {length} bytes from endpoint {ENDPOINT_IN}")
            print("print len :", min(256, length))
            # print_buffer(data)
            elapsed = time.time() - start_time
            speed = total_bytes / (1024 * 1024) / elapsed
            print(f"Total received: {total_bytes} bytes, Speed: {speed:.2f} MB/s")

def main():
    while True:
        handle = open_device()
        if handle:
            break
        time.sleep(1)

    try:
        test_loop()
    except KeyboardInterrupt:
        print("\nTest interrupted.")
    finally:
        close_device()
        print("Device closed.")

if __name__ == "__main__":
    main()
