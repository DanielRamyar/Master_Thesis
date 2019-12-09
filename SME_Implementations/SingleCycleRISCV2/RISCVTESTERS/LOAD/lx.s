.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -1900 # x13 = -1900
    addi x14, x0, 200   # Set regiser 14 to have value 200
    addi x15, x0, 56    # Set regiser 15 to have value 56
    addi x16, x0, 3     # Set regiser 16 to have value 3
    addi x17, x0, -1    # Set regiser 17 to have value 1
    
    slli x18, x16, 15   # x18 = x16 << 31   | 98304 = 3 << 15
    sw x15, x13, -24    # M[x15-24][0:31] = x13[0:31] | M[56-24][0:31] = -1900[0:31] should store -1900
    sh x15, x18, -8     # M[x15-8][0:15] = x13[0:15] | M[56-8][0:15] = 98304[0:15] should store -32768
    sb x15, x13, -56    # M[x15-56][0:7] = x13[0:7] | M[56-56][0:7] = -1900[0:7] should store 148
    
    sw x15, x18, 16      # M[x15+16][0:31] = x18[0:31] | M[56+16][0:31] = 98304[0:31] should store 98304
    lw x19, x15, -24     # x19 = M[x15-24][0:31] | x19 = -1900[0:31] should load -1900
    lh x20, x15, 16      # x20 = M[x15+16][0:15] | x20 = 98304[0:15] should load -32768
    lb x21, x15, -24     # x21 = M[x15-24][0:7]  | x21 = -1900[0:7] should load -108
    
