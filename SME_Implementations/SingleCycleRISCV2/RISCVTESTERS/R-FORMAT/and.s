.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2048 # x13 = -2048
    addi x14, x0, -1    # Set regiser 14 to have value -1
    addi x15, x0, 1     # Set regiser 15 to have value 1
    addi x16, x0, -1    # Set regiser 16 to have value -1
    addi x17, x0, 1     # Set regiser 17 to have value 1
    
    and x18, x17, x17 # x18 = x17 and x17 | 1 = 1 and 1
    and x19, x17, x15 # x19 = x17 and x15 | 1 = 1 and 1
    and x20, x15, x17 # x20 = x15 and x17 | 1 = 1 and 1
    and x21, x17, x0  # x21 = x17 and x0  | 0 = 1 and 0
    and x22, x0, x17  # x22 = x0  and x17 | 0 = 0 and 1
    and x23, x0, x0   # x22 = x0  and x0  | 0 = 0 and 0
    
    and x24, x13, x14  # x24 = x13 and x14 | -2048 = -2048 and -1
    and x25, x14, x14  # x25 = x14 and x14 | -1 = -1 and -1