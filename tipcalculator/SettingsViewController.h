//
//  SettingsViewController.h
//  tipcalculator
//
//  Created by Angus Huang on 12/14/13.
//  Copyright (c) 2013 Angus Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController

// Key for storing the index of the default tip in NSUserDefaults.
extern NSString *const DEFAULT_TIP_INDEX;

/**
 * Sets the selected index for the given Segmented Control using the default
 * stored in NSUserDefaults.
 *
 * @param tipSegmentedControl the Segmented Control to set selected index for
 */
+ (void)setDefaultSelectedIndex:(UISegmentedControl *)tipSegmentedControl;

@end
