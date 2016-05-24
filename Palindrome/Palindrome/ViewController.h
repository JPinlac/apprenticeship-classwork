//
//  ViewController.h
//  Palindrome
//
//  Created by DetroitLabs on 5/24/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *entryField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIButton *evalButton;

-(IBAction)evaluateField;

@end

