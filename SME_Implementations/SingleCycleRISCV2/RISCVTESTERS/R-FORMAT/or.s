.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2048 # x13 = -2048
    addi x14, x0, -1    # Set regiser 14 to have value -1
    addi x15, x0, 1     # Set regiser 15 to have value 1
    addi x16, x0, -1    # Set regiser 16 to have value -1
    addi x17, x0, 1     # Set regiser 17 to have value 1
    
    or x18, x17, x17 # x18 = x17 or x17 | 1 = 1 or 1
    or x19, x17, x15 # x19 = x17 or x15 | 1 = 1 or 1
    or x20, x15, x17 # x20 = x15 or x17 | 1 = 1 or 1
    or x21, x17, x0  # x21 = x17 or x0  | 1 = 1 or 0
    or x22, x0, x17  # x22 = x0  or x17 | 1 = 0 or 1
    or x23, x0, x0   # x22 = x0  or x0  | 0 = 0 or 0
    
    or x24, x13, x14  # x24 = x13 or x14 | -1 = -2048 or -1
    or x25, x14, x14  # x25 = x14 or x14 | -1 = -1 or -1