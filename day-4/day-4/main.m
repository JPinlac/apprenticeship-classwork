//
//  main.m
//  day-4
//
//  Created by DetroitLabs on 5/19/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

int findEvenFibonacciSum(int* array){
    int sum = 0;
    for(int x = 0; x < 32; x++){
        if(array[x] % 2 == 0){
            sum += array[x];
            printf("%d\n", array[x]);
        }
    }
    return sum;
}

void chap13Challenge(){
    NSHost *myComputer = [NSHost currentHost];
    NSLog(@"My computer is %@.\n", myComputer);
    NSString *localizedHost = [myComputer localizedName];
    NSLog(@"My localized computer is %@\n", localizedHost);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        int fibArray[31];
//        fibArray[0] = 1;
//        fibArray[1] = 2;
//        for(int x = 2; x <= 31; x++){
//            fibArray[x] = fibArray[x - 1] + fibArray[x - 2];
//            printf("%d at index %d.\n", fibArray[x], x);
//        }
//        printf("Size of array %lu.\n", sizeof(fibArray));
//        printf("The sum of even is %d.\n", findEvenFibonacciSum(fibArray));
        
//        NSDate *now = [NSDate date];
//        NSLog(@"This NSDate object lives at %p\n", now);
//        NSLog(@"The date is %@\n", now);
//        
//        double seconds = 0;
//        seconds = [now timeIntervalSince1970];
//        NSLog(@"The gap between is %f.\n", seconds);
        chap13Challenge();
    }
    return 0;
}
