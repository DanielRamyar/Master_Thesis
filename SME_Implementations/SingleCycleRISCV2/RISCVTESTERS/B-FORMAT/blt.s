.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -1900 # x13 = -1900
    addi x14, x0, 200   # Set regiser 14 to have value 200
    addi x15, x0, 56    # Set regiser 15 to have value 56
    addi x16, x0, 3     # Set regiser 16 to have value 3
    addi x17, x0, 199   # Set regiser 17 to have value 1
    
    blt x14, x17, 24    # if(x14 < x17) PC += 24 | if(200 < 199) PC += 16
    addi x17, x17, 1    # x17 += 1
    blt x14, x17, 20    # if(x14 < x17) PC += 20 | if(200 < 200) PC += 16
    addi x17, x17, 1    # x17 += 1
    blt x14, x17, 16    # if(x14 < x17) PC += 16 | if(200 < 201) PC += 16
    addi x17, x17, 1    # x17 += 1
    addi x17, x17, 304  # x17 += 304
    addi x17, x17, 1    # x17 += 1
    addi x17, x17, 10   # x17 += 10
    
    
