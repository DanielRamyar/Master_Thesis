.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2048 # x13 = -2048
    addi x14, x0, 1024   # Set regiser 14 to have value 1024
    addi x15, x0, 7     # Set regiser 15 to have value 7
    addi x16, x0, -5    # Set regiser 16 to have value -5
    addi x17, x0, 1     # Set regiser 17 to have value 1
    
    srl x18, x14, x15 # x18 = x14 >> x15 | 8 = 1024 >> 7
    srl x19, x13, x15 # x19 = x13 >> x15 | 144115188075855856 = -2048 >> 7 (result for 64 bit number)