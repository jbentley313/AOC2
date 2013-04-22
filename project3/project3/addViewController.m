//
//  addViewController.m
//  project3
//
//  Created by theOwner on 4/19/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "addViewController.h"

@interface addViewController ()

@end

@implementation addViewController
@synthesize delegate;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//button actions 
-(IBAction)onClick2:(id)sender;
{
    UIButton *button = (UIButton*)sender;
    if (button !=nil) {
        if (button.tag == 0) {
            [eventText resignFirstResponder];
        } else if (button.tag ==1) {
                [delegate didClose:eventText.text];
        
                [self dismissViewControllerAnimated:YES completion:nil];
        }
    }
}


//Date picker onChange actions
-(IBAction)onChange:(id)sender;
{
    UIDatePicker *datePicked = (UIDatePicker*)sender;
    if (datePicked !=nil) {
        
        NSDate *dateNS = datePicked.date;
        NSDateFormatter *formattedDate = [[NSDateFormatter alloc] init];
        [formattedDate setDateFormat:@"MMM dd, yyyy 'at' hh:mm a"];
        NSString *dateString = [formattedDate stringFromDate:dateNS];
        
        
    /////////calling this here makes multiple date values for every "turn" of the picker.  Not sure where to call this
        [delegate didClose:dateString];
        
    }
}


//close keyboard on keyboard Return Key
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [eventText resignFirstResponder];
    
    return true;
}

//
 - (void)textFieldDidBeginEditing:(UITextField *)textField
{
    saveBtn.hidden = NO;
    closeKeyBtn.hidden = NO;
}


//
//- (BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//    [self dismissViewControllerAnimated:YES completion:Nil];
//    return true;
//}

@end
