.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2048 # x13 = -2048
    addi x14, x0, -1    # Set regiser 14 to have value -1
    addi x15, x0, 1     # Set regiser 15 to have value 1
    addi x16, x0, -1    # Set regiser 16 to have value -1
    addi x17, x0, 1     # Set regiser 17 to have value 1
    
    xor x18, x17, x17 # x18 = x17 xor x17 | 0 = 1 xor 1
    xor x19, x17, x15 # x19 = x17 xor x15 | 0 = 1 xor 1
    xor x20, x15, x17 # x20 = x15 xor x17 | 0 = 1 xor 1
    xor x21, x17, x0  # x21 = x17 xor x0  | 1 = 1 xor 0
    xor x22, x0, x17  # x22 = x0  xor x17 | 1 = 0 xor 1
    xor x23, x0, x0   # x22 = x0  xor x0  | 0 = 0 xor 0
    
    xor x24, x13, x14  # x24 = x13 xor x14 | 2047 = -2048 xor -1
    xor x25, x14, x14  # x25 = x14 xor x14 | 0 = -1 xor -1