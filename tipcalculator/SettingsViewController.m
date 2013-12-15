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

//==============================================================================
#pragma mark - Public Constants
//==============================================================================

NSString *const DEFAULT_TIP_INDEX = @"defaultTipIndex";

//==============================================================================
#pragma mark - Initializers
//==============================================================================

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Settings";
    }
    return self;
}

//==============================================================================
#pragma mark - View Lifecycle Methods
//==============================================================================

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Initialize the SegmentedControl with the default tip percentage.
    [SettingsViewController setDefaultSelectedIndex:self.defaultTipSegmentedControl];
}

//==============================================================================
#pragma mark - IBAction Methods
//==============================================================================

- (IBAction)onDefaultTipChanged:(UISegmentedControl *)sender
{
    // Immediately store the index of the newly selected default tip in NSUserDefaults.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:sender.selectedSegmentIndex forKey:DEFAULT_TIP_INDEX];
}

//==============================================================================
#pragma mark - Public Methods
//==============================================================================

+ (void)setDefaultSelectedIndex:(UISegmentedControl *)tipSegmentedControl
{
    // Retrieve the default tip percentage from NSUserDefaults.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int defaultIndex = [defaults integerForKey:DEFAULT_TIP_INDEX];
    [defaults synchronize];
    
    // Set the tip SegmentedControl to the default tip.
    tipSegmentedControl.selectedSegmentIndex = defaultIndex;
}

@end
