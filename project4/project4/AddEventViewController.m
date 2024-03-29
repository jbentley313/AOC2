//
//  AddEventViewController.m
//  project4
//
//  Created by Jason Bentley on 4/26/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "AddEventViewController.h"
#import "textDateManager.h"


@interface AddEventViewController ()

@end

@implementation AddEventViewController
@synthesize dateString;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void)viewWillAppear:(BOOL)animated;
{
    //swipe left instantiation
    if (swipeLeftLabel != nil) {
        leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
        leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
        [swipeLeftLabel addGestureRecognizer:leftSwiper];
    }
    [super viewWillAppear:animated];
}


- (void)viewDidLoad
{
    //set min date to today
    [datePicked setMinimumDate:[NSDate date]];

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


//onClick button
-(void)onClick:(id)sender;
{
    UIButton *button = (UIButton*)sender;
    if (button !=nil) {
        //close keyboard
        if (button.tag == 0) {
            [eventText resignFirstResponder];
        }
    }
}

//date picker
-(IBAction)onChange:(id)sender;
{
    //format date
    formattedDate = [[NSDateFormatter alloc] init];
    [formattedDate setDateFormat:@"MMM dd, yyyy 'at' hh:mm a"];
    
    datePicked = (UIDatePicker*)sender;
    if (datePicked !=nil) {
        NSDate *dateNS = datePicked.date;
        
        //format dateString2
        NSString *dateString2 = [formattedDate stringFromDate:dateNS];
        if (dateString2 != nil) {
            [self setDateString:dateString2];
        }
    }
}

//swipe left
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    //get data from singleton
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
        if (eventText.text.length < 1) {
            
            //alert string if empty
            NSString *message = @"please enter a name for the event";
            [self DisplayAlertWithString:message];
            
            //call singleton with eventText and dateString
        } else if (eventText.text.length > 0) {
            [[textDateManager GetInstance] printSettings:eventText.text ];
            
            //use today's date if no date picked
            if (dateString == nil) {
                formattedDate = [[NSDateFormatter alloc] init];
                [formattedDate setDateFormat:@"MMM dd, yyyy 'at' hh:mm a"];
                NSString *todaysDate = [formattedDate stringFromDate:[NSDate date]];
                [self setDateString:todaysDate];
                [[textDateManager GetInstance] dateSettings:dateString];
                
                //dismiss view
                [self dismissViewControllerAnimated:YES completion:nil];
                
                //use picked date
            } else if (dateString != nil) {
                [[textDateManager GetInstance] dateSettings:dateString];
                [self dismissViewControllerAnimated:YES completion:nil];
            }
        }
    }
}


//alert
-(void)DisplayAlertWithString:(NSString*)alert
{
    UIAlertView *alertViewMsg = [[UIAlertView alloc] initWithTitle:@"Alert" message:alert delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
    if (alertViewMsg != nil) {
        [alertViewMsg show];
    }
}


//show keyboard when editing
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    closeKeyboardBtn.hidden = NO;
}

//hide keyboard when done editing
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    closeKeyboardBtn.hidden = YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
