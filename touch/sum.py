def calc_checksum(hex_str):
    hex_values = hex_str.split()
    checksum = 0
    for value in hex_values:
        checksum += int(value, 16)
    checksum = checksum  # Ensure it fits in one byte
    return f'{checksum:08X}'



s = input('Enter hex string: ')
# hex_str = '97 00 00 00 00 01 1E 01 00 00 00 00 00 02 00 02 01 7A 01 B4 00 00 00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00 00 00 00 11 00'
res = calc_checksum(s)
print(f'Checksum: {res}')