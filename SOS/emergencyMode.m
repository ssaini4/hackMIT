//
//  emergencyMode.m
//  SOS
//
//  Created by Saksham Saini on 10/5/14.
//  Copyright (c) 2014 Sworks. All rights reserved.
//

#import "emergencyMode.h"

@interface emergencyMode ()

@end

@implementation emergencyMode

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *alarm = [[NSBundle mainBundle] pathForResource:@"alarm" ofType:@"mp3"];
    // Do any additional setup after loading the view.
    _player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:alarm] error:NULL];
    _player.delegate = self;
    _player.numberOfLoops = -1;
    [_player play];
    
    
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
