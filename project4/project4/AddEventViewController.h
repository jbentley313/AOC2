;//
//  AddEventViewController.h
//  project4
//
//  Created by Jason Bentley on 4/26/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "textDateManager.h"
#import "ViewController.h"

@interface AddEventViewController : UIViewController <UITextFieldDelegate>
{
    UISwipeGestureRecognizer *leftSwiper;
    IBOutlet UILabel *swipeLeftLabel;
    IBOutlet UITextField *eventText;
    NSDateFormatter *formattedDate;
    IBOutlet UIButton *closeKeyboardBtn;
    IBOutlet UIDatePicker *datePicked;
}

-(IBAction)onChange:(id)sender;

-(IBAction)onClick:(id)sender;


//@property (strong) NSString *passedText;
@property (retain, nonatomic)  NSString *dateString;

-(void)DisplayAlertWithString:(NSString*)alert;



@end
