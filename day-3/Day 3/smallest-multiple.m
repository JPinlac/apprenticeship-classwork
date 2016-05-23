//
//  smallest-multiple.m
//  Day 3
//
//  Created by DetroitLabs on 5/18/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

int findSmallestMultiple(int start, int end){
    bool flag = false;
    int smallest = start;
    while(!flag){
        printf("%d\n", smallest);
        for(int x = start; x <= end; x++){
            if(smallest % x != 0){
                //breaks out of the loop skipping the flag flipper.
                goto skipFlag;
            }
        }
        flag = true;
        skipFlag:
        smallest++;
    }
    return smallest - 1;
}