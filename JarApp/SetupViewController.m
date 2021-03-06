//
//  SetupViewController.m
//  JarApp
//
//  Created by Wagner Pinto on 3/14/15.
//  Copyright (c) 2015 Jake Herrmann. All rights reserved.
//

#import "SetupViewController.h"
#import <Parse/Parse.h>

@interface SetupViewController ()
@property (weak, nonatomic) IBOutlet UILabel *UserNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *UserEmailLabel;


@end

@implementation SetupViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.UserNameLabel.text = [PFUser currentUser].username;
    self.UserEmailLabel.text = [PFUser currentUser].email;
}
- (IBAction)logOut:(id)sender {
    //call the logout action from the Parse API;
    //Present the Login ViewController
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
