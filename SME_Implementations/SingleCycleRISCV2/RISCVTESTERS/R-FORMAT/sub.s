.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2048 # x13 = -2048
    addi x14, x0, -5    # Set regiser 14 to have value -5
    addi x15, x0, 1     # Set regiser 15 to have value 1
    addi x16, x0, 8     # Set regiser 16 to have value 8
    addi x17, x0, 7     # Set regiser 17 to have value 7
    
    sub x18, x17, x16 # x18 = x17 - x16 | -1 = 7 - 8
    sub x19, x16, x17 # x19 = x16 - x17 | 1 = 8 - 7
    sub x20, x13, x16 # x20 = x13 - x16 | -2056 = -2048 - 8
    sub x21, x16, x13 # x21 = x16 - x13 | 2056 = 8 + 2048