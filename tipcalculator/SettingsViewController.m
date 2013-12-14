//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Angus Huang on 12/14/13.
//  Copyright (c) 2013 Angus Huang. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipSegmentedControl;

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

    [SettingsViewController setDefaultSelectedIndex:self.defaultTipSegmentedControl];
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

+ (void)setDefaultSelectedIndex:(UISegmentedControl *)tipSegmentedControl
{
    // Retrieve the default tip percentage from NSUserDefaults.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int defaultIndex = [defaults integerForKey:DEFAULT_TIP_INDEX];
    
    // Set the tip SegmentedControl to the default tip.
    tipSegmentedControl.selectedSegmentIndex = defaultIndex;
}

@end
