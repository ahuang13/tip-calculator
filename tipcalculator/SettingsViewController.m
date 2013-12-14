//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Angus Huang on 12/14/13.
//  Copyright (c) 2013 Angus Huang. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

- (IBAction)onDefaultTipChanged:(UISegmentedControl *)sender;
@end

@implementation SettingsViewController

NSString *const DEFAULT_TIP_INDEX = @"defaultTipIndex";

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Settings";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)onDefaultTipChanged:(UISegmentedControl *)sender
{
    // Immediately store the index of the newly selected default tip in NSUserDefaults.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:sender.selectedSegmentIndex forKey:DEFAULT_TIP_INDEX];
}

@end
