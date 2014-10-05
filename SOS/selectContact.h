//
//  selectContact.h
//  SOS
//
//  Created by Saksham Saini on 10/4/14.
//  Copyright (c) 2014 Sworks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBookUI/AddressBookUI.h>
#import <AddressBook/AddressBook.h>
#import "Parse/Parse.h"
@interface selectContact : UITableViewController
@property(strong, nonatomic) PFUser *currentUser;
@end
