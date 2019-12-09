.global __start

__start:
    addi x0, x0, 10 # Check to see if register 0 can be written to
    
    addi x13, x0, -2048 # x13 = -2048
    addi x14, x0, 200   # Set regiser 14 to have value 200
    addi x15, x0, 7     # Set regiser 15 to have value 7
    addi x16, x0, -5    # Set regiser 16 to have value -5
    addi x17, x0, 1     # Set regiser 17 to have value 1
    
    slli x18, x17, 31   # x18 = x17 << 31   | 2,147,483,648 = 1 << 31
    slli x19, x18, 31   # x19 = x18 << 31   | 4.611686018E18 = 2,147,483,648 << 31 
    slli x20, x19, 1    # x20 = x19 << 1    | -9.223372037E18 = 4.611686018E18 << 1 note that this is for 64 bit systems
    slli x21, x20, 1    # x21 = x20 << 1    | 0 = 9.223372037E18 << 1
