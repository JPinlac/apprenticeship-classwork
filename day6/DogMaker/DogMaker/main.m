//
//  main.m
//  DogMaker
//
//  Created by DetroitLabs on 5/23/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *myDog = [[Dog alloc] init];
        myDog.breed = @"Great dane";
        myDog.name = @"Ares";
        myDog.size = @"Extra large";
        [myDog bark];
    }
    return 0;
}
