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
            
            if (delegate !=nil) {
                [delegate didClose:eventText.text];

                [self dismissViewControllerAnimated:YES completion:nil];
            }
        }
    }
    
}

-(IBAction)onChange:(id)sender;
{
    UIDatePicker *datePicked = (UIDatePicker*)sender;
    if (datePicked !=nil) {
        NSDate *dateNS = datePicked.date;
        NSDateFormatter *formattedDate = [[NSDateFormatter alloc] init];
        [formattedDate setDateFormat:@"E MMM dd, yyyy 'at' hh:mm a"];
        NSString *dateString = [formattedDate stringFromDate:dateNS];
        [delegate didClose:dateString];
        
        
    }
}


//call didClose on keyboard Return Key
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self dismissViewControllerAnimated:YES completion:nil];
    if (delegate !=nil) {
        [delegate didClose:eventText.text];
    }
    return true;
}

// - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
//{
//    return true;
//}
//
//- (BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//    [self dismissViewControllerAnimated:YES completion:Nil];
//    return true;
//}

@end
