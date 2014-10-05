//
//  SignUp.m
//  SOS
//
//  Created by Saksham Saini on 9/28/14.
//  Copyright (c) 2014 Sworks. All rights reserved.
//

#import "SignUp.h"

@interface SignUp ()

@end

@implementation SignUp

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)signUpButton:(id)sender {
    if(![_passwordTextField.text isEqualToString:_confirmPasswordTextField.text])
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Passwords do not match!" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil, nil];
        [alert show];
        
    }
    else
    {
    PFUser *newUser = [PFUser user];
    newUser.username = _usernameTextField.text;
    newUser.email =_emailTextField.text;
    newUser.password= _passwordTextField.text;
    newUser[@"phoneNumber"]= _phoneNumberTextField.text;
        newUser[@"firstName"]= _firstNameTextField.text;
        newUser[@"lastName"]=_lastNameTextField.text;
        newUser[@"address"]= _addressTextField.text;
        
        
    [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if(error)
        {
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sorry" message:[error.userInfo objectForKey:@"error"] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alertView show];
        }
    }];
        [self performSegueWithIdentifier:@"showSelectContact" sender:self];
            }
    
}
@end
