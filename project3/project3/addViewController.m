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
@synthesize dateString;



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






//button actions 
-(IBAction)onClick2:(id)sender;
{
    UIButton *button = (UIButton*)sender;
    if (button !=nil) {
        //close keyboard
        if (button.tag == 0) {
            [eventText resignFirstResponder];
        } else if (button.tag ==1) {
            if (eventText.text.length > 0) {
                //call didClose with eventText and dateString
                [delegate didClose:eventText.text];
                
                //use today's date if none picked
                if (dateString == nil) {
                    formattedDate = [[NSDateFormatter alloc] init];
                    [formattedDate setDateFormat:@"MMM dd, yyyy 'at' hh:mm a"];
                    
                    NSString *todaysDate = [formattedDate stringFromDate:[NSDate date]];
                    [self setDateString:todaysDate];
                    [delegate didClose:dateString];
                    [delegate didClose:@"\n"];
                    [self dismissViewControllerAnimated:YES completion:nil];
                    
                    //use picked date
                } else if (dateString != nil) {
                    [delegate didClose:dateString];
                    [delegate didClose:@"\n"];
                    [self dismissViewControllerAnimated:YES completion:nil];

                }
            }
        }
    }
}




//Date picker onChange actions
-(IBAction)onChange:(id)sender;
{
   
    formattedDate = [[NSDateFormatter alloc] init];
    [formattedDate setDateFormat:@"MMM dd, yyyy 'at' hh:mm a"];
    
    UIDatePicker *datePicked = (UIDatePicker*)sender;
    if (datePicked !=nil) {
        //set min date to today
        [datePicked setMinimumDate:[NSDate date]];
        
        NSDate *dateNS = datePicked.date;
       
        NSString *dateString2 = [formattedDate stringFromDate:dateNS];
        if (dateString2 != nil) {
            [self setDateString:dateString2];
        }
    }
}


//close keyboard on keyboard Return Key
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [eventText resignFirstResponder];
    
    return true;
}

//unhide save button and close keyboard on editing
 - (void)textFieldDidBeginEditing:(UITextField *)textField
{
    saveBtn.hidden = NO;
    closeKeyBtn.hidden = NO;
   
}

//hide close keyboard button when done editing
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    closeKeyBtn.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//
//- (BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//    [self dismissViewControllerAnimated:YES completion:Nil];
//    return true;
//}

@end
