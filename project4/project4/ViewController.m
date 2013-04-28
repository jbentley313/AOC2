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

    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



-(void)viewWillAppear:(BOOL)animated;
{
    //swipe right instantiation
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    //add gesture recog to rightSwiper label
    [swipeRightLabel addGestureRecognizer:rightSwiper];
    
    [super viewWillAppear:animated];
    
    //data passed from Singleton textDateManager
    NSString *textFromSingleton = [[textDateManager GetInstance] passedText];
    if (textFromSingleton != nil) {
        textViewDisplay.text = [textViewDisplay.text stringByAppendingFormat:@"\n%@", textFromSingleton];
    }
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

//-(void)setdText
//{
//    [textViewDisplay setText:[[textDateManager GetInstance] passedText]];
//    NSString *this = [[textDateManager GetInstance] passedText];
//    [textViewDisplay setText:this];
//}


//button actions
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil) {
        //save button
        if (button.tag == 0) {
//            NSString *this = [[textDateManager GetInstance] passedText];
//            [textViewDisplay setText:this];
        }
    }
    
}
@end
