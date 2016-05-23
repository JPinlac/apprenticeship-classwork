//
//  main.m
//  Day 3
//
//  Created by DetroitLabs on 5/18/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

int warmUp(){
    int sum = 0;
    for(int x = 0; x < 1000; x++) {
        if (x % 3 == 0 || x % 5 == 0) {
            sum += x;
        }
    }
    printf("The sum is %d.\n", sum);
    return 0;
}

float calculateArea(float width, float height){
    return width * height;
}

float betterCalculateArea(int sides, float width, float height){
    if(sides > 4 || sides < 3){
        printf("Please enter 3 or 4 sides.");
        return 0;
    }
    else if(sides == 4){
        return width * height;
    }
    else {
        return .5 * width * height;
    }
}

void fizzBuzz(){
    for(int x = 1; x <= 100; x++){
        if(!(x % 3) && !(x % 5)){
            printf("FizzBuzz\n");
        }
        else if(!(x % 3)){
            printf("Fizz\n");
        }
        else if (!(x % 5)){
            printf("Buzz\n");
        }
        else{
            printf("%d\n", x);
        }
    }
}

void printMultiplyTables(){
    int counter = 0;
    while(counter <= 12){
        printf("4 times %d is %d.\n", counter, counter * 4);
        counter++;
    }
}

struct Student {
    int idNum;
    float exam1;
    float exam2;
    float exam3;
};

void calculateStudentAverage(struct Student student){
    printf("Student number %d's average is %f.\n", student.idNum, (student.exam1 + student.exam2 + student.exam3)/3);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
//        warmUp();
//        printf("The area is %f. \n", calculateArea(5.0, 6.0));
//        printf("The area is %f. \n", betterCalculateArea(3, 5.0, 6.0));
//        fizzBuzz();
//        printMultiplyTables();
//        struct Student student1, student2;
//        student1.idNum = 1;
//        student1.exam1 = 72.3;
//        student1.exam2 = 67.2;
//        student1.exam3 = 22.8;
//        student2.idNum = 2;
//        student2.exam1 = 97.3;
//        student2.exam2 = 87.2;
//        student2.exam3 = 73.8;
//        calculateStudentAverage(student1);
//        calculateStudentAverage(student2);
//        runAtm();
//        printf("The smallest multiple is %d.\n",findSmallestMultiple(1,10));
        printf("The largest palindrome is %d.\n",palindrome());
//        triplet();
    }
    return 0;
}