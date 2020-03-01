.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2048 # x13 = -2048
    addi x14, x0, -5    # Set regiser 14 to have value -5
    addi x15, x0, 1     # Set regiser 15 to have value 1
    addi x16, x0, 8     # Set regiser 16 to have value 8
    addi x17, x0, 7     # Set regiser 17 to have value 7
    
    add x18, x17, x16 # Add register 17 and 16 and put result in register 18
    sub x19, x17, x16 # Subtract register 17 and 16 and put result in register 18
    
    and x20, x15, x15 # and 1 1
    and x21, x15, x0  # and 1 0
    and x22, x0, x15  # and 0 1
    and x23, x0, x0   # and 0 0
    
    or x24, x15, x15 # or 1 1
    or x25, x15, x0  # or 1 0
    or x26, x0, x15  # or 0 1
    or x27, x0, x0   # or 0 0
    
    xor x18, x15, x15 # xor 1 1
    xor x19, x15, x0  # xor 1 0
    xor x20, x0, x15  # xor 0 1
    xor x21, x0, x0   # xor 0 0
    
    sll x22, x15, x17  # x22 = x15 << x17 ---- 128 = 1 << 7
    slt x23, x16, x17  # x23 = (x16 < x17)?1:0 ---- 0 = (8 < 7)?1:0
    slt x24, x17, x16  # x24 = (x17 < x16)?1:0 ---- 1 = (7 < 8)?1:0
    sltu x25, x16, x14 # x25 = (x16 < x14)?1:0 -5 is 65531 unsigned ---- 1 = (8 < 65531)?1:0
    sltu x26, x14, x16 # x26 = (x14 < x16)?1:0 ---- 0 = (65531 < 8)?1:0
    srl x27, x22, x17  # x27 = x15 >> x17 ---- 1 = 128 >> 7
    srl x18, x13, x17  # x18 = x13 >> x17 ---- 144115188075855856 = -2048 >> 7
    sra x19, x13, x17  # x19 = x13 >> x17 ---- -16 = -2048 >> 7
    
    
    
    