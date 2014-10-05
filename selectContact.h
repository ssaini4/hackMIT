//
//  selectContact.h
//  SOS
//
//  Created by Saksham Saini on 10/4/14.
//  Copyright (c) 2014 Sworks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Parse/Parse.h"
@interface selectContact : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *phone1;
@property (weak, nonatomic) IBOutlet UITextField *phone2;
@property (weak, nonatomic) IBOutlet UITextField *phone3;
- (IBAction)doneButton:(id)sender;
@property (strong,nonatomic) PFUser *currentUser;
@end
