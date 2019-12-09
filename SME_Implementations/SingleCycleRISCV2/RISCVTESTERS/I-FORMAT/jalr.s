.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -1900 # x13 = -1900
    addi x14, x0, 200   # Set regiser 14 to have value 200
    addi x15, x0, 56    # Set regiser 15 to have value 56
    addi x16, x0, 4     # Set regiser 16 to have value 4
    addi x17, x0, 1    # Set regiser 17 to have value 1
    
    jalr x20, x16, 44
    addi x17, x0, 1    # Set regiser 17 to have value 1
    addi x17, x0, 1    # Set regiser 17 to have value 1
    addi x17, x0, 1    # Set regiser 17 to have value 1
    addi x17, x0, 1    # Set regiser 17 to have value 1
    addi x17, x0, 1    # Set regiser 17 to have value 1
    addi x25, x0, 540  # Set regiser 20 to have value 540
    
