from ctypes import WinDLL, c_void_p, c_ulong, c_bool, c_char_p, create_string_buffer, pointer


class CH375DLL:
    def __init__(self, dll_path="CH375DLL64.dll"):
        self.dll = WinDLL(dll_path)

        # 宣告函式原型
        self.dll.CH375OpenDevice.argtypes = [c_ulong]
        self.dll.CH375OpenDevice.restype = c_void_p

        self.dll.CH375CloseDevice.argtypes = [c_ulong]
        self.dll.CH375CloseDevice.restype = None

        self.dll.CH375GetVersion.argtypes = []
        self.dll.CH375GetVersion.restype = c_ulong

        self.dll.CH375ResetDevice.argtypes = [c_ulong]
        self.dll.CH375ResetDevice.restype = c_bool

        self.dll.CH375GetUsbID.argtypes = [c_ulong]
        self.dll.CH375GetUsbID.restype = c_ulong

        self.dll.CH375GetDeviceName.argtypes = [c_ulong]
        self.dll.CH375GetDeviceName.restype = c_char_p

        self.dll.CH375SetExclusive.argtypes = [c_ulong, c_ulong]
        self.dll.CH375SetExclusive.restype = c_bool

        self.dll.CH375SetBufUpload.argtypes = [c_ulong, c_ulong]
        self.dll.CH375SetBufUpload.restype = c_bool

        self.dll.CH375QueryBufUpload.argtypes = [c_ulong]
        self.dll.CH375QueryBufUpload.restype = c_ulong

        self.dll.CH375SetBufDownload.argtypes = [c_ulong, c_ulong]
        self.dll.CH375SetBufDownload.restype = c_bool

        self.dll.CH375QueryBufDownload.argtypes = [c_ulong]
        self.dll.CH375QueryBufDownload.restype = c_ulong

        self.dll.CH375ReadEndP.argtypes = [c_ulong, c_ulong, c_void_p, c_void_p]
        self.dll.CH375ReadEndP.restype = c_bool

        self.dll.CH375WriteEndP.argtypes = [c_ulong, c_ulong, c_void_p, c_void_p]
        self.dll.CH375WriteEndP.restype = c_bool

        self.dll.CH375AbortEndPRead.argtypes = [c_ulong, c_ulong]
        self.dll.CH375AbortEndPRead.restype = c_bool

        self.dll.CH375AbortEndPWrite.argtypes = [c_ulong, c_ulong]
        self.dll.CH375AbortEndPWrite.restype = c_bool

        self.dll.CH375SetBufUploadEx.argtypes = [c_ulong, c_ulong, c_ulong, c_ulong]
        self.dll.CH375SetBufUploadEx.restype = c_bool

    # 裝置操作
    def open_device(self, index=0):
        handle = self.dll.CH375OpenDevice(index)
        if not handle:
            raise RuntimeError("CH375OpenDevice failed")
        return handle

    def close_device(self, handle):
        self.dll.CH375CloseDevice(handle)

    def get_version(self):
        return self.dll.CH375GetVersion()

    def reset_device(self, handle):
        return self.dll.CH375ResetDevice(handle)

    def get_usb_id(self, handle):
        return self.dll.CH375GetUsbID(handle)

    def get_device_name(self, index):
        name = self.dll.CH375GetDeviceName(index)
        return name.decode("utf-8") if name else ""

    def set_exclusive(self, handle, enable=True):
        return self.dll.CH375SetExclusive(handle, 1 if enable else 0)

    def set_buf_upload(self, handle, enable=True):
        return self.dll.CH375SetBufUpload(handle, 1 if enable else 0)

    def query_buf_upload(self, handle):
        return self.dll.CH375QueryBufUpload(handle)

    def set_buf_download(self, handle, enable=True):
        return self.dll.CH375SetBufDownload(handle, 1 if enable else 0)

    def query_buf_download(self, handle):
        return self.dll.CH375QueryBufDownload(handle)

    # 端點傳輸操作
    def read_endpoint(self, handle, pipe_num=1, length=4096 * 1024):  # 預設 4MB
        buf = create_string_buffer(length)
        io_len = c_ulong(length)
        success = self.dll.CH375ReadEndP(handle, pipe_num, buf, pointer(io_len))
        if not success:
            raise RuntimeError("CH375ReadEndP failed")
        return buf.raw[:io_len.value]

    def write_endpoint(self, handle, pipe_num, data: bytes):
        buf = create_string_buffer(data)
        io_len = c_ulong(len(data))
        success = self.dll.CH375WriteEndP(handle, pipe_num, buf, pointer(io_len))
        if not success:
            raise RuntimeError("CH375WriteEndP failed")
        return io_len.value

    def abort_read_endpoint(self, handle, pipe_num):
        return self.dll.CH375AbortEndPRead(handle, pipe_num)

    def abort_write_endpoint(self, handle, pipe_num):
        return self.dll.CH375AbortEndPWrite(handle, pipe_num)

    def set_buf_upload_ex(self, handle, enable=True, pipe_num=1, buf_size=4096 * 1024):
        return self.dll.CH375SetBufUploadEx(handle, 1 if enable else 0, pipe_num, buf_size)



if __name__ == "__main__":
    import time
    ch = CH375DLL()
    handle = None
    try:
        print("裝置名稱：", ch.get_device_name(0))
        handle = ch.open_device(0)
        ch.set_exclusive(handle, True)

        # 啟用端點 1 的緩衝上傳，緩衝區大小 1MB
        ch.set_buf_upload_ex(handle, enable=True, pipe_num=1, buf_size=1024 * 1024)

        print("開始接收 endpoint 1 的資料... 按 Ctrl+C 結束")
        total_bytes = 0
        start_time = time.time()

        while True:
            try:
                data = ch.read_endpoint(handle, pipe_num=1, length=64*1024)
                total_bytes += len(data)

                if len(data) > 0:
                    print(f"✔ 接收 {len(data)} bytes")
                else:
                    time.sleep(0.005)  # 無資料時稍等避免佔滿 CPU

                # 每 5 秒印一次速度
                elapsed = time.time() - start_time
                if elapsed >= 5:
                    speed = total_bytes / 1024 / 1024 / elapsed
                    print(f"📊 平均接收速度：{speed:.2f} MB/s")
                    start_time = time.time()
                    total_bytes = 0

            except RuntimeError as e:
                print("讀取失敗：", e)
                time.sleep(1)

    except Exception as e:
        print("錯誤：", e)

    finally:
        if handle:
            ch.close_device(handle)
            print("已關閉裝置")