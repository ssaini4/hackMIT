//
//  barMode.h
//  SOS
//
//  Created by Saksham Saini on 10/5/14.
//  Copyright (c) 2014 Sworks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Parse/Parse.h"
#import <CoreLocation/CoreLocation.h>
#import <AddressBook/AddressBook.h>
@interface barMode : UIViewController <CLLocationManagerDelegate>
@property(strong,nonatomic) PFUser *currentUser;
@property (weak, nonatomic) CLLocationManager *locationManager;
@end
