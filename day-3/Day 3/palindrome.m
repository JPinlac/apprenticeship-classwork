//
//  palindrome.m
//  Day 3
//
//  Created by DetroitLabs on 5/18/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

int convertInttoChar(int number){
    if(number == 0){
        return 48;
    }
    else if(number == 1){
        return 49;
    }
    else if(number == 2){
        return 50;
    }
    else if(number == 3){
        return 51;
    }
    else if(number == 4){
        return 52;
    }
    else if(number == 5){
        return 53;
    }
    else if(number == 6){
        return 54;
    }
    else if(number == 7){
        return 55;
    }
    else if(number == 8){
        return 56;
    }
    else{
        return 57;
    }
}

int power(int base, int exp) {
    int i, result = 1;
    for (i = 0; i < exp; i++){
        result *= base;
    }
    return result;
}

bool checkPalindrome(char* number, int length){
    for(int x = 0; x < length; x++){
        if(number[x] != number[length - x - 1]){
            return false;
        }
    }
    return true;
}

int palindrome(){
    int maxPalindrome = 0;
    int product = 0;
    int digits = 0;
    for(int x = 999; x >= 100; x--){
        for(int y = 999; y >= 100; y--){
            product = x * y;
            digits = (int)floor(log10(abs(product))) + 1;
            char funArray[digits];
            for(int y = 0; y < digits; y++){
                funArray[y] = convertInttoChar(product % power(10,digits - y + 0)/power(10,digits-y-1));
            }
            printf("The c-string is %s and the size of the array is %d.\n", funArray, sizeof(funArray));
            if(checkPalindrome(funArray, sizeof(funArray)) && product > maxPalindrome){
                maxPalindrome = product;
            }
        }
    }
    return maxPalindrome;
}