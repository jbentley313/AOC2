;//
//  AddEventViewController.h
//  project4
//
//  Created by theOwner on 4/26/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventViewController : UIViewController
{
    UISwipeGestureRecognizer *leftSwiper;
    IBOutlet UILabel *swipeLeftLabel;
}

-(IBAction)onChange:(id)sender;

-(IBAction)onClick:(id)sender;

@end
