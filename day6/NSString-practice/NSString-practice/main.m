//
//  main.m
//  NSString-practice
//
//  Created by DetroitLabs on 5/23/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *myName = @"Jonathan";
        NSLog(@"%lu", myName.length);
        NSLog(@"%@", myName.uppercaseString);
        NSLog(@"%@", myName.lowercaseString);
        NSLog(@"%c", [myName characterAtIndex:0]);
        NSString *lastName = @"Pinlac";
        if([myName caseInsensitiveCompare:lastName] == NSOrderedSame)
            NSLog(@"True");
        else
            NSLog(@"False");
        
    }
    return 0;
}
