.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2048 # x13 = -2048
    addi x14, x0, -1    # Set regiser 14 to have value -1
    addi x15, x0, 1     # Set regiser 15 to have value 1
    addi x16, x0, -1    # Set regiser 16 to have value -1
    addi x17, x0, 1     # Set regiser 17 to have value 1
    
    ori x18, x17, 1 # x18 = x17 or 1 | 1 = 1 or 1
    ori x19, x17, 0 # x19 = x17 or 0 | 1 = 1 or 0
    ori x20, x0 , 1 # x20 = x0  or 1 | 1 = 0 or 1
    ori x21, x0 , 0 # x21 = x0  or 0 | 0 = 0 or 0
    
    ori x24, x14, -2048  # x24 = x13 or x14 | -1 = -1 or -2048
    ori x25, x14, -1     # x25 = x14 or x14 | -1 = -1 or -1