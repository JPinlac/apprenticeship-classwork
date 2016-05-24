//
//  ViewController.m
//  Palindrome
//
//  Created by DetroitLabs on 5/24/16.
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

-(void)evaluateField{
    NSString *phrase = _entryField.text;
    BOOL isPalindrome = true;
    phrase = phrase.lowercaseString;
    
    //regex stuff
    NSString *pattern = @"[^a-z]";
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern
                                                                           options:0
                                                                             error:NULL];
    NSString *trimmedString = [regex stringByReplacingMatchesInString:phrase
                                                              options:NSMatchingReportProgress
                                                                range:NSMakeRange(0, phrase.length)
                                                         withTemplate:@"$1"];
    NSLog(@"The regex result is %@", trimmedString);
    
    for(int x = 0; x < trimmedString.length; x++){
        if([trimmedString characterAtIndex:x] != [trimmedString characterAtIndex:trimmedString.length - x - 1]){
            isPalindrome = false;
        }
    }
    NSLog(@"The word %@ %@ a palindrome.", _entryField.text, isPalindrome? @"is":@"isn't");
    _resultLabel.text = [NSString stringWithFormat:@"The phrase %@ %@ a palindrome.", _entryField.text, isPalindrome? @"is":@"isn't"];
    

    
}

@end
