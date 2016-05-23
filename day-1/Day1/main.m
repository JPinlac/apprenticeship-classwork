//
//  main.m
//  Day1
//
//  Created by DetroitLabs on 5/17/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSLog(@"Hello, World!");
//        nnt();
//        gradeBook(75);
        rubberDuck();
    }
    return 0;
}

int nnt () {
    int age = 26;
    float bankBalance = 20.3;
    char bloodType = 'o';
    bool asleep = false;
    
    printf("My age is %d and is type int.\n", age);
    printf("My bankBalance is %f and is type float.\n", bankBalance);
    printf("My bloodType is %c.\n", bloodType);
    printf("Am I asleep? %s of type boolean. \n", asleep ? "true" : "false");
    
    return 0;
}

int gradeBook(int grade) {
    if (grade < 60){
        printf("You failed\n");
    }
    else if (grade >= 90) {
        printf("You got an A\n");
    }
    else if (grade >= 80) {
        printf("You got an B\n");
    }
    else if (grade >= 70) {
        printf("You got an C\n");
    }
    else {
        printf("You got an D\n");
    }
    return 0;
}

int rubberDuck () {
    char question[10];
    //When initializing an array the array is filled with whatever is leftover in memory, so you can't predict what's inside.
    //The following loop fills the array with an empty characters
    for (int a = 0; a < sizeof(question); a++){
        question[a] = '\0';
    }
    
    printf("Please ask a question!!!!\n");
    scanf("%s", question);

    //This looks checks for any non-empty locations in the string to determine the string length.
    int questionLength = 0;
    for (int x = 0; x < sizeof(question); x++){
        if(question[x] != '\0'){
            questionLength ++;
        }
    }
    
    if(questionLength < 2) {
        printf("Ask a better question!\n");
    }
    else if (questionLength > 5){
        printf("Simplify your question!\n");
    }
    else {
        printf("I like you!\n");
    }
    return 0;
}