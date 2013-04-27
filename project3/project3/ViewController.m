//
//  ViewController.m
//  project3
//
//  Created by theOwner on 4/18/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "ViewController.h"
#import "addViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//didClose
-(void)didClose:(NSString *)nameString;
{
    //'erase' default text in eventView
    if ([eventView.text isEqual: @"Added events will go here..."]) {
        eventView.text = @"";
    } 
    //set eventView text to updated user input
        eventView.text = [eventView.text stringByAppendingFormat: @"\n%@", nameString];
    
}

//add event button
-(IBAction)onClick:(id)sender;
{
    UIButton *button = (UIButton*)sender;
    addViewController *addView = [[addViewController alloc] initWithNibName:@"addView" bundle:nil];
    
    if (button != nil) {
        if (button.tag == 0) {
            if (addView !=nil) {
                addView.delegate = self;
                [self presentViewController:addView animated:YES completion:nil];
            }
        } 
    }
}


@end
