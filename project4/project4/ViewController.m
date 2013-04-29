//
//  ViewController.m
//  project4
//
//  Created by theOwner on 4/26/13.
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
    NSObject *defaultObjects = [defaults objectForKey:@"allEvents"];
    if (defaults !=nil) {
        
        // display if defaults have been saved 
        if (defaultObjects != nil) {
            NSString *allEvents = [defaults objectForKey:@"allEvents"];
            
            //set textview to display all events
            textViewDisplay.text = allEvents;
        }
    }
    
    //swipe right instantiation
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    //add gesture recog to rightSwiper label
    [swipeRightLabel addGestureRecognizer:rightSwiper];
    
    //data passed from Singleton textDateManager
    NSString *textFromSingleton = [[textDateManager GetInstance] passedText];
    NSString *dateFromSingleton = [[textDateManager GetInstance] passedDate];
    if (textFromSingleton != nil) {
        textViewDisplay.text = [textViewDisplay.text stringByAppendingFormat:@"\n%@\n%@\n", textFromSingleton, dateFromSingleton];
    }
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
    else {
        
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
        //save button
        if (button.tag == 0) {
            NSUserDefaults *defaultSet = [NSUserDefaults standardUserDefaults];
            if (defaultSet !=nil) {
                NSString *allEventsDisplay = textViewDisplay.text;
                [defaultSet setObject:allEventsDisplay forKey:@"allEvents"];
                
                //save data
                [defaultSet synchronize];
            }
        }
    }
}
@end
