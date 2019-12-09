.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2028 # x13 = -2028
    addi x14, x0, 200   # Set regiser 14 to have value 200
    addi x15, x0, 7     # Set regiser 15 to have value 7
    addi x16, x0, 1     # Set regiser 16 to have value 3
    addi x17, x0, -1    # Set regiser 17 to have value 1
    
    slli x18, x16, 31   # x18 = x16 << 31   | 2147483648 = 1 << 31
    slli x19, x18, 31   # x19 = x18 << 31   | 4611686018427387904 = 1 << 31
    # Hand written sd instruction which is in the dump file