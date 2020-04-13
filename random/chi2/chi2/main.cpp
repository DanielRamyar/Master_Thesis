//
//  main.cpp
//  chi2
//
//  Created by Daniel Ramyar on 13/04/2020.
//  Copyright © 2020 Daniel Ramyar. All rights reserved.
//

#include <iostream>

double sqrt(double a) {
    return a*a;
}

int main(int argc, const char * argv[]) {
    
    // Array declaration by initializing elements
    int observed[] = {30, 14, 34, 45, 57, 20};
    int expected[] = {20, 20, 30, 40, 60, 30};
    double chi2 = 0;
    double temp;
    
    // Calculate chi2
    for (int i=0; i<6; i++) {
        temp = observed[i]-expected[i];
        chi2 += sqrt(temp) / expected[i];
    }
    
    printf("%f\n",chi2);
    

    return 0;
}
