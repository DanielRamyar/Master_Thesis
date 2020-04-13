//
//  main.c
//  fibonacci
//
//  Created by Daniel Ramyar on 13/04/2020.
//  Copyright © 2020 Daniel Ramyar. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int x, x_old, x_new, t, i;
    
    x = 1;
    x_old = 0;
    t = 14;
    int results[20];
    
    for (i = 0; i < t; i++) {
        results[i] = x_old;
        printf("%d\n",x_old);
        x_new = x + x_old;
        x_old = x;
        x = x_new;
    }
    return 0;
}
