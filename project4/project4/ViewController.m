//
//  ViewController.m
//  project4
//
//  Created by Jason Bentley on 4/26/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "ViewController.h"
#import "AddEventViewController.h"
#import "textDateManager.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad
{
    //instantiate singleton
    [textDateManager CreateInstance];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



-(void)viewWillAppear:(BOOL)animated;
{
    //display saved user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults !=nil) {
        
        // display if defaults have been saved
         NSObject *defaultObjects = [defaults objectForKey:@"allEvents"];
        if (defaultObjects != nil) {
            NSString *allEvents = [defaults objectForKey:@"allEvents"];
            
            //set textview to display all events
            textViewDisplay.text = allEvents;
        }
    }
    
    //get data passed from Singleton textDateManager
    NSString *textFromSingleton = [[textDateManager GetInstance] passedText];
    NSString *dateFromSingleton = [[textDateManager GetInstance] passedDate];
    if (textFromSingleton && dateFromSingleton != nil) {
        //display data
        textViewDisplay.text = [textViewDisplay.text stringByAppendingFormat:@"\n%@\n%@\n", textFromSingleton, dateFromSingleton];
        
        //show save button
        saveBtn.hidden = NO;
    }
    
    //swipe right instantiation
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    //add gesture recog to rightSwiper label
    [swipeRightLabel addGestureRecognizer:rightSwiper];
    
    [super viewWillAppear:animated];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//right swipe
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight) {
        AddEventViewController *viewcontroller =[[AddEventViewController alloc]initWithNibName:@"addEventView" bundle:nil];
        if (viewcontroller != nil) {
            //present addEventViewController
            [self presentViewController:viewcontroller animated:YES completion:nil];
        }
    }
}


-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}


//button actions
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil) {
        
        //save button for defaults
        if (button.tag == 0) {
            NSUserDefaults *defaultSet = [NSUserDefaults standardUserDefaults];
            
            if (defaultSet !=nil) {
                NSString *allEventsDisplay = textViewDisplay.text;
                [defaultSet setObject:allEventsDisplay forKey:@"allEvents"];
                
                //save data
                [defaultSet synchronize];
                
                //display success msg
                NSString *message = @"Events have been saved!";
                [self DisplayAlertWithString:message];
                
                //hide save button
                saveBtn.hidden = YES;
                
                
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
@end
