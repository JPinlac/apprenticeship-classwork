//
//  Dog.h
//  DogMaker
//
//  Created by DetroitLabs on 5/23/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *breed;
@property(nonatomic, strong) NSString *size;

-(void) bark;
-(void) run;
-(void) play;

@end
