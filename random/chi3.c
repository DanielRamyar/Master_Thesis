//
//  main.cpp
//  chi2
//
//  Created by Daniel Ramyar on 13/04/2020.
//  Copyright © 2020 Daniel Ramyar. All rights reserved.
//
int main(int argc, const char * argv[]) {
    
    // Array declaration by initializing elements
    int observed[] = {30, 14, 34, 45, 57, 20};
    int expected[] = {20, 20, 30, 40, 60, 30};
    double chi2 = 0;
    
    // Calculate chi2
    for (int i=0; i<6; i++) {
        chi2 += observed[i]-expected[i];
    }

    return 0;
}
