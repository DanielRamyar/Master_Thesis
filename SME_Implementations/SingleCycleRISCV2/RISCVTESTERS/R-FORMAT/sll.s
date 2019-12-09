.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2048 # x13 = -2048
    addi x14, x0, 200   # Set regiser 14 to have value 200
    addi x15, x0, 7     # Set regiser 15 to have value 7
    addi x16, x0, -5    # Set regiser 16 to have value -5
    addi x17, x0, 1     # Set regiser 17 to have value 1
    
    sll x18, x17, x15 # x18 = x17 << x15 | 128 = 1 << 7
    sll x19, x17, x14 # x19 = x17 << x14 | 256 = 1 << 200 should take least significant 5 bits with is 8 in this case
    sll x20, x18, x16 # x20 = x18 << x16 | 0 = 128 << -5 least five bits is 27