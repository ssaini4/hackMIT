//
//  ViewController.m
//  SOS
//
//  Created by Saksham Saini on 9/28/14.
//  Copyright (c) 2014 Sworks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize locationManager;
-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    locationManager = [[CLLocationManager alloc]init];
    [locationManager setDelegate:self];
    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [locationManager startUpdatingLocation];
}

- (void)viewDidLoad {
    [super viewDidLoad];
                                //Code makes sure that there is user already logged in
    
    _currentUser= [PFUser currentUser];
    if(_currentUser)
    {
        NSLog(@"Current User:%@", _currentUser.username);
        [self dismissViewControllerAnimated:YES completion:nil];
        [self performSegueWithIdentifier:@"showButtons2" sender:self];
    }
    
    else{
        [self dismissViewControllerAnimated:YES completion:nil];

        [self performSegueWithIdentifier:@"showSignUp" sender:self];
    }
    [PFUser logOut];


}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}


@end
