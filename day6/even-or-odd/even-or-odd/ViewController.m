//
//  ViewController.m
//  even-or-odd
//
//  Created by DetroitLabs on 5/23/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)evaluateNumber:(NSString *)input{
    int number = [input floatValue];
    if(number % 2 ==0){
        self.result.text = [NSString stringWithFormat: @"%i is even", number];
    }
}
@end
