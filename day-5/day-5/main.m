
//
//  main.m
//  day-5
//
//  Created by DetroitLabs on 5/20/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

bool isEven(int num){
    if(num % 2 == 0)
        return true;
    else
        return false;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("Is the number 5 even?\n%s\n", isEven(5) ? "True" : "False");
    }
    return 0;
}
