//
//  cya.m
//  day-5
//
//  Created by DetroitLabs on 5/20/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

struct Character{
    char name[20];
    int health;
    int attack;
    
};

#import <Foundation/Foundation.h>
void startAdventure(){
    struct Character newCharacter;
    printf("Welcome to Clash of Code!\n----------------------------------------------\nPlease choose your name(no more than 20 characters).\n");
    scanf("%s", newCharacter.name);
    printf("Please choose a class:\n1. Warrior\n2. Ranger\n3. Mage\n");
//    scanf("%d", &newCharacter.classSelection);
}