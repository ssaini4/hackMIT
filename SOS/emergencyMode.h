//
//  emergencyMode.h
//  SOS
//
//  Created by Saksham Saini on 10/5/14.
//  Copyright (c) 2014 Sworks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "Parse/Parse.h"
@interface emergencyMode : UIViewController <AVAudioPlayerDelegate>
@property(strong, nonatomic) AVAudioPlayer *player;
@property( strong, nonatomic) PFUser *currentUser;

@end
