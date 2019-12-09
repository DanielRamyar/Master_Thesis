.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2028 # x13 = -2028
    addi x14, x0, 200   # Set regiser 14 to have value 200
    addi x15, x0, 56    # Set regiser 15 to have value 56
    addi x16, x0, 1     # Set regiser 16 to have value 3
    addi x17, x0, -1    # Set regiser 17 to have value 1
    
    slli x18, x16, 31   # x18 = x16 << 31   | 2147483648 = 1 << 31
    slli x19, x18, 31   # x19 = x18 << 31   | 4611686018427387904 = 2147483648 << 31
    slli x25, x19, 1    # x25 = x19 << 1    | -9,223,372,036,854,775,808 = 4611686018427387904 << 1
    # Hand written sd instruction and ld instruction in instruction dump
    # sd x15, x19, -24
    # ld x20, x15, -24
    # sd x15, x25, -56
    # ld x21, x15, -56