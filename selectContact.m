//
//  selectContact.m
//  SOS
//
//  Created by Saksham Saini on 10/4/14.
//  Copyright (c) 2014 Sworks. All rights reserved.
//

#import "selectContact.h"

@interface selectContact ()

@end

@implementation selectContact

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showButtons"] )
    {
        NSLog(@"done\n\n");
    }
}
- (IBAction)doneButton:(id)sender {
   _currentUser = [PFUser currentUser];
    NSString *numbers= [[NSString alloc] initWithFormat:@"%@%@%@", _phone1.text, _phone2.text,_phone3.text];
    
       _currentUser[@"emergencyContacts"]= numbers;
    [_currentUser saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if(error)
        {
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sorry" message:[error.userInfo objectForKey:@"error"] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alertView show];
        }

    }];
    [self performSegueWithIdentifier:@"showButtons" sender:nil];

}
@end
