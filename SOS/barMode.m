//
//  barMode.m
//  SOS
//
//  Created by Saksham Saini on 10/5/14.
//  Copyright (c) 2014 Sworks. All rights reserved.
//

#import "barMode.h"

@interface barMode ()

@end

@implementation barMode


-(void) viewWillAppear:(BOOL)animated
{
    [_locationManager startUpdatingLocation];
    [_locationManager setDelegate:self];
    [_locationManager setDesiredAccuracy:kCLLocationAccuracyNearestTenMeters];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CLLocation *location = [_locationManager location];

    _currentUser = [PFUser currentUser];
    NSArray *phoneNumbers = [_currentUser objectForKey:@"emergencyNumbers"];
    
    CLGeocoder *reverseGeoCoder= [[CLGeocoder alloc] init];
    [reverseGeoCoder reverseGeocodeLocation:location completionHandler:^(NSArray *placemarks, NSError *error) {
        if(error)
        {
            NSLog(@"Geocoder failed");
            return;
        }
    
    if(placemarks && placemarks.count>0)
    {   CLPlacemark *placemark = placemarks[0];
        NSDictionary *addressDictionary = placemark.addressDictionary;
        NSString *address = [addressDictionary objectForKey:(NSString *)kABPersonAddressStreetKey];
        NSString *address2 = [addressDictionary objectForKey:(NSString *)kABPersonAddressCityKey];
        NSString *total = [[NSString alloc]initWithFormat:@"%@ %@",address,address2];
        _currentUser[@"currentLocation"]= total;
        [_currentUser saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if(error)
            {
                NSLog(@"%@",error);
                
            }
        }
         
    ];
    
        [PFCloud callFunctionInBackground:@"smsBarMode" withParameters:@{@"emergencyNumbers":@"phoneNumbers"} block:^(NSString *result, NSError *error)
    
    
         
    NSString *url= @"uber://?action=setPickup&pickup[latitude]=[location coordinate].latitude & pickup[longitude]=[location coordinate].longitude &pickup[nickname]=UberHQ&pickup[formatted_address]='location'&dropoff[latitude]=37.802374&dropoff[longitude]=-122.405818&dropoff[nickname]=Home%20&dropoff[formatted_address]= &product_id=a1111c8c-c720-46c3-8534-2fcdd730040d";
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
    
    

    
};
        
    




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
