//
//  AddEventViewController.m
//  project4
//
//  Created by theOwner on 4/26/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "AddEventViewController.h"
#import "textDateManager.h"
#import "ViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController
@synthesize passedText;

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
    if (swipeLeftLabel != nil) {
        leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
        leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
        [swipeLeftLabel addGestureRecognizer:leftSwiper];
    }
    [super viewWillAppear:animated];
}


- (void)viewDidLoad
{
    
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
    
    formattedDate = [[NSDateFormatter alloc] init];
    [formattedDate setDateFormat:@"MMM dd, yyyy 'at' hh:mm a"];
    
    UIDatePicker *datePicked = (UIDatePicker*)sender;
    if (datePicked !=nil) {
        //set min date to today
        [datePicked setMinimumDate:[NSDate date]];
        
        NSDate *dateNS = datePicked.date;
        //format dateString2
        NSString *dateString2 = [formattedDate stringFromDate:dateNS];
        if (dateString2 != nil) {
            
        }
    }
}


-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
       
        [[textDateManager GetInstance] printSettings:eventText.text ];
        NSLog(@"the text from addVC is %@", eventText.text);
        
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
