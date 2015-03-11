//
//  AddFineViewController.m
//  JarApp
//
//  Created by Jake Herrmann on 3/7/15.
//  Copyright (c) 2015 Jake Herrmann. All rights reserved.
//

#import "AddFineViewController.h"
#import "Fine.h"
#import "JarViewController.h"
#import "Jar.h"

@interface AddFineViewController ()

@property (nonatomic, readwrite) float stepperValue;

@end

@implementation AddFineViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.baseView.alpha = 1.0;
//    [self.baseView setAlpha:.5];


}
- (IBAction)sliderChanged:(id)sender {
    self.stepperValue = self.fineSlider.value;
}


- (IBAction)closePopUp:(id)sender {
    self.view.alpha = 0;
    [[self navigationController]setNavigationBarHidden:NO];
    [self willMoveToParentViewController:nil];
}

- (IBAction)submitFine:(id)sender {
    
    PFObject *fine = [PFObject objectWithClassName:@"Fine"];
    
   // [fine setObject:[Jar currentJar] forKey:@"Jar"];
    fine[@"Jar"] = [Jar currentJar];
    fine[@"Perp"] = self.perpTextField.text;
    fine[@"Nark"] = [PFUser currentUser];
    NSNumber *sliderValue = [NSNumber numberWithFloat:self.stepperValue];
    fine[@"Fee"] = sliderValue;
    fine[@"Description"] = self.descriptionTextField.text;
    
    [fine saveInBackground];
    [[NSNotificationCenter defaultCenter]postNotificationName:@"fineReload" object:nil];
    
    self.view.alpha = 0;
    [[self navigationController]setNavigationBarHidden:NO];
    [self willMoveToParentViewController:nil];
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

@end
