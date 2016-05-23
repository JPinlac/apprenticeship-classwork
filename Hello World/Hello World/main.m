//
//  main.m
//  Hello World
//
//  Created by DetroitLabs on 5/17/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        int myAge = 26;
        float testScore = 0.94;
        char testLetterGrade = 'A';
//        printf("this thing %d", myAge);
        
        float cost = 50.5;
        if (cost * 1.06 > 50) {
            printf("Are you sure?\n");
        }
        else if (cost * 1.06 < 50) {
            printf("go for it\n");
        }
        else {
            printf("don't buy it\n");
        }
        return 0;
    }
    
    return 0;
}

