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
    [textDateManager CreateInstance];
    [[textDateManager GetInstance]passedText];

    
    [textViewDisplay setText:[[textDateManager GetInstance] passedText]];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



-(void)viewWillAppear:(BOOL)animated;
{
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeRightLabel addGestureRecognizer:rightSwiper];
    [super viewWillAppear:animated];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight) {
        AddEventViewController *viewcontroller =[[AddEventViewController alloc]initWithNibName:@"addEventView" bundle:nil];
        if (viewcontroller != nil) {
            [self presentViewController:viewcontroller animated:YES completion:nil];
        }
    }
    else {
        
    }
    
}

-(void)setdText
{
    [textViewDisplay setText:[[textDateManager GetInstance] passedText]];
    NSString *this = [[textDateManager GetInstance] passedText];
    [textViewDisplay setText:this];
}


-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil) {
        if (button.tag == 0) {
//            NSString *this = [[textDateManager GetInstance] passedText];
//            [textViewDisplay setText:this];
        }
    }
    
}
@end
