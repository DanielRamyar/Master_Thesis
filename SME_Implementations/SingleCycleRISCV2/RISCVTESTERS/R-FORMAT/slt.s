.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2048 # x13 = -2048
    addi x14, x0, 200   # Set regiser 14 to have value 200
    addi x15, x0, 7     # Set regiser 15 to have value 7
    addi x16, x0, -5    # Set regiser 16 to have value -5
    addi x17, x0, 1     # Set regiser 17 to have value 1
    
    slt x18, x17, x15 # x18 = (x17 < x15) ? 1:0 | 1 = (1 < 7) ? 1:0
    slt x19, x15, x17 # x19 = (x15 < x17) ? 1:0 | 0 = (7 < 1) ? 1:0
    slt x20, x13, x16 # x20 = (x13 < x16) ? 1:0 | 1 = (-2048 < -5) ? 1:0
    slt x21, x16, x13 # x21 = (x16 < x13) ? 1:0 | 0 = (-5 < -2048) ? 1:0
    slt x22, x14, x13 # x22 = (x14 < x13) ? 1:0 | 0 = (200 < -2048) ? 1:0
    slt x23, x13, x14 # x23 = (x13 < x14) ? 1:0 | 1 = (-2048 < 200) ? 1:0