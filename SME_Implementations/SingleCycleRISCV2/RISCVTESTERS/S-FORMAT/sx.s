.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2028 # x13 = -2028
    addi x14, x0, 200   # Set regiser 14 to have value 200
    addi x15, x0, 56    # Set regiser 15 to have value 56
    addi x16, x0, 3     # Set regiser 16 to have value 3
    addi x17, x0, -1    # Set regiser 17 to have value 1
    
    slli x18, x16, 15   # x18 = x16 << 31   | 98304 = 3 << 15
    sw x15, x13, -24    # M[x15-24][0:31] = x13[0:31] | M[56-24][0:31] = -2028[0:31] should store -2028
    sh x15, x18, -8     # M[x15-8][0:31]  = x13[0:31] | M[56-8][0:31]  = 98304[0:15] should store -32768
    sb x15, x13, -56    # M[x15-7][0:31]  = x13[0:31] | M[56-56][0:31] = -2028[0:7] should store 20
