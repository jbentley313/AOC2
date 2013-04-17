//
//  ViewController.h
//  project1
//  AOC2 1304 Jason Bentley
//  Created by theOwner on 4/8/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sailplaneFactory.h"

@interface ViewController : UIViewController
{
    IBOutlet UIButton *spName1;
    IBOutlet UIButton *spName2;
    IBOutlet UIButton *spName3;
    IBOutlet UIButton *execute;
    IBOutlet UIButton *infoButton;
    IBOutlet UITextView *spName1Details;
    IBOutlet UITextView *spName2Details;
    IBOutlet UITextView *spName3Details;
    IBOutlet UISegmentedControl *colorControl;
    IBOutlet UIStepper *stepControl;
    IBOutlet UILabel *glideStepLabel;
    
}

-(IBAction)onClick:(id)sender;

-(IBAction)onChange:(id)sender;

-(IBAction)onStep:(id)sender;
@end
