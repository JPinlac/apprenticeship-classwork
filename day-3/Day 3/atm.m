//
//  atm.m
//  Day 3
//
//  Created by DetroitLabs on 5/18/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Account {
    float checkingBalance;
    float savingsBalance;
    int pin;
    
};

void deposit(struct Account account, float amount, char accountType) {
    if(accountType == 'c'){
        account.checkingBalance += amount;
    }
    else{
        account.savingsBalance += amount;
    }
}

void withdraw(struct Account account, float amount, char accountType) {
    if(accountType == 'c'){
        account.checkingBalance -= amount;
    }
    else{
        account.savingsBalance -= amount;
    }
}

int runAtm() {
    char action;
    char accountType;
    int amount;
    int pin;
    
    struct Account myAccount;
    myAccount.pin = 33;
    myAccount.checkingBalance = -51.03;
    myAccount.savingsBalance = 4;
    
    printf("Hi welcome to the Labs atm!\nWould you like to make a withdrawal or deposit?\nPlease enter the character w or d.\n");
    scanf("%c", &action);
    while(!(action == 'd' || action == 'w')){
        printf("Sorry, please enter d or w.\n");
        scanf("%c", &action);
    }
    
    printf("Thanks, please enter the amount you would like to deposit or withdraw.\n");
    scanf("%d",&amount);
    
    printf("Thanks, would you like to access you checking or saving account?\nPlease enter c or s.\n");
    scanf("%c",&accountType);
    while(!(accountType == 'c' || accountType == 's')){
        printf("Sorry, please enter c or s.\n");
        scanf("%c", &accountType);
    }
    
    printf("Thanks you, to confirm this transaction please enter you pin.\n");
    scanf("%d", &pin);
    if(pin == myAccount.pin){
        if(action == 'd'){
            if(accountType == 'c'){
                deposit(myAccount, amount, 'c');
            }
            else{
                deposit(myAccount, amount, 's');
            }
        }
        else{
            if(accountType == 'c'){
                withdraw(myAccount, amount, 'c');
            }
            else{
                withdraw(myAccount, amount, 's');
            }
        }
        printf("You succesfully deposited or withdrew %d.\n", amount);
    }
    else{
        printf("Sorry the pin you entered is incorrect.\n");
    }
    return 0;
}