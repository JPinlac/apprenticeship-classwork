//
//  ViewController.m
//  color-changer
//
//  Created by DetroitLabs on 5/19/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changeColor{
    NSLog(@"colorChange is being called!!");
    
    UIColor *defaultColor = self.view.backgroundColor;
    NSLog(@"%@", defaultColor);
    
    if(self.view.backgroundColor != [UIColor brownColor]){
        self.view.backgroundColor = [UIColor brownColor];
    }
    else{
//        self.view.backgroundColor = [UIColor purpleColor];
        self.view.backgroundColor = defaultColor;
    }
    
}

- (IBAction)buttonPressed{
    [self changeColor];
}

@end
