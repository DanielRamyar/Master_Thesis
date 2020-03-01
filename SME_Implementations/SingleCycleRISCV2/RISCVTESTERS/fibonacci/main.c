//
//  main.c
//  test
//
//  Created by Daniel Ramyar on 12/11/2019.
//  Copyright © 2019 Daniel Ramyar. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int x, x_old, x_new, t, i;
    
    x = 1;
    x_old = 0;
    t = 14;
    
    for (i = 0; i < t; i++) {
        printf("%d\n",x_old);
        x_new = x + x_old;
        x_old = x;
        x = x_new;
    }
    return 0;
}
