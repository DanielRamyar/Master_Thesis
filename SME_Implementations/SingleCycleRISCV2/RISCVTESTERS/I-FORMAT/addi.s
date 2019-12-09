.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2048 # x13 = -2048
    addi x14, x0, 2047    # Set regiser 14 to have value 2047
    addi x15, x0, 1     # Set regiser 15 to have value 1
    addi x16, x0, -8     # Set regiser 16 to have value -8
    addi x17, x0, 7     # Set regiser 17 to have value 7