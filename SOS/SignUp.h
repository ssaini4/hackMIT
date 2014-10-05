//
//  SignUp.h
//  SOS
//
//  Created by Saksham Saini on 9/28/14.
//  Copyright (c) 2014 Sworks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Parse/Parse.h"
@interface SignUp : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
- (IBAction)signUpButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *confirmPasswordTextField;
@property (weak, nonatomic) IBOutlet UITextField *addressTextField;

@end
