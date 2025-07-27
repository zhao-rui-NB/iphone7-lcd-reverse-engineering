

def checksum(str):
    # str = "a1a2ff00550102030405060708090a0b0c0d0e0f"
    rpl = [" ", "\n", "\t", ","]
    for i in rpl:
        str = str.replace(i, "")

    hex_values = [int(str[i:i+2], 16) for i in range(0, len(str), 2)]
    print(hex_values)

    # 使用 XOR 計算 checksum
    checksum = 0
    for value in hex_values:
        checksum ^= value
    print(f"Checksum: {checksum:02x}")


if __name__ == "__main__":
    byte_str = input("Enter a byte string: ")
    checksum(byte_str)