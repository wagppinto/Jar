//
//  AddFineViewController.m
//  JarApp
//
//  Created by Jake Herrmann on 3/7/15.
//  Copyright (c) 2015 Jake Herrmann. All rights reserved.
//

#import "AddFineViewController.h"

@interface AddFineViewController ()


@end

@implementation AddFineViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.baseView.alpha = 1.0;
//    [self.baseView setAlpha:.5];


}
- (IBAction)closePopUp:(id)sender {
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