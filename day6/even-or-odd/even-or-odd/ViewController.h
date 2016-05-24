//
//  ViewController.h
//  even-or-odd
//
//  Created by DetroitLabs on 5/23/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userEntry;
@property (weak, nonatomic) IBOutlet UIButton *evaluate;
@property (weak, nonatomic) IBOutlet UILabel *result;

-(IBAction)evaluateNumber;
    
@end

