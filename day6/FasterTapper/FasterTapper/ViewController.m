//
//  ViewController.m
//  FasterTapper
//
//  Created by DetroitLabs on 5/23/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
NSTimer *timer;
int secondsRemaining;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)createTimer{
    //Create a new timer object and resets seconds remaining
    timer =[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerFired) userInfo:nil repeats:YES];
    secondsRemaining = 10;
    _timerLabel.text = [NSString stringWithFormat:@"Time: %i", secondsRemaining];
}

-(void)timerFired {
    secondsRemaining--;
    if(secondsRemaining == 0){
        [timer invalidate];
        [self findWinner];
    }
//    NSLog(@"Tick %i", secondsRemaining);
    _timerLabel.text = [NSString stringWithFormat: @"Time: %i", secondsRemaining];
}

-(void)findWinner{
    NSString *winner;
    if(_player1TapCount > _player2TapCount)
        winner = @"Player 1";
    else if (_player1TapCount < _player2TapCount)
        winner = @"Player 2";
    else
        winner = @"No one";
    
    UIAlertController *alert = [UIAlertController
                                alertControllerWithTitle:@"Game Over!"
                                message:[NSString stringWithFormat: @"%@ is the winner!", winner]
                                preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alert animated:YES completion:nil];
    UIAlertAction *restart = [UIAlertAction actionWithTitle:@"Restart"
                                                      style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction *action){
                                                        [self dismissViewControllerAnimated:YES completion:nil];
                                                        [self restartGame];
                                                        
                                                    }];
    [alert addAction:restart];
}
-(void)restartGame{
    secondsRemaining = 10;
    _player1TapCount = 0;
    _player2TapCount = 0;
    _player1Taps.text = [NSString stringWithFormat: @"P1 Taps %lu",_player1TapCount];
    _player2Taps.text = [NSString stringWithFormat: @"P2 Taps %lu",_player2TapCount];
    _timerLabel.text = [NSString stringWithFormat:@"Time: %i", secondsRemaining];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)player1Tap{
    if(_player1TapCount == 0 && _player2TapCount == 0){
        [self createTimer];
    }
    if(secondsRemaining > 0){
        _player1TapCount++;
        _player1Taps.text = [NSString stringWithFormat: @"P1 Taps %lu",_player1TapCount];
    }
}

-(void)player2Tap{
    if(_player1TapCount == 0 && _player2TapCount == 0){
        [self createTimer];
    }
    if(secondsRemaining > 0){
        _player2TapCount++;
        _player2Taps.text = [NSString stringWithFormat: @"P2 Taps %lu",_player2TapCount];
    }
}


@end
