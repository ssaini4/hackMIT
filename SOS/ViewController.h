//
//  ViewController.h
//  SOS
//
//  Created by Saksham Saini on 9/28/14.
//  Copyright (c) 2014 Sworks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "Parse/Parse.h"


@interface ViewController : UIViewController <CLLocationManagerDelegate>
@property (strong) CLLocationManager *locationManager;
@property (strong, nonatomic) PFUser *currentUser;
@end

