;//
//  AddEventViewController.h
//  project4
//
//  Created by theOwner on 4/26/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "textDateManager.h"

@interface AddEventViewController : UIViewController
{
    UISwipeGestureRecognizer *leftSwiper;
    IBOutlet UILabel *swipeLeftLabel;
    IBOutlet UITextField *eventText;
    NSDateFormatter *formattedDate;
}

-(IBAction)onChange:(id)sender;

-(IBAction)onClick:(id)sender;



//@property (strong) NSString *passedText;
@property (retain, nonatomic)  NSString *dateString;

-(void)DisplayAlertWithString:(NSString*)alert;

@end
