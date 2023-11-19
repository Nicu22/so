import os

size = os.path.getsize("m3.bin")

small = open("m3.bin", "rb")
big = open("big3.img", "wb")
big.write(small.read())
bytes = b'\x00' * (1474560 - size)
big.write(bytes)