//
//  ViewController.h
//  project4
//
//  Created by theOwner on 4/26/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"

@interface ViewController : UIViewController
{
    IBOutlet UIButton *saveBtn;
    IBOutlet UILabel *swipeRightLabel;
    UISwipeGestureRecognizer *rightSwiper;
    IBOutlet UITextView *textViewDisplay;
}

-(IBAction)onClick:(id)sender;


@end
