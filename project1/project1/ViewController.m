//
//  ViewController.m
//  project1
//
//  Created by theOwner on 4/8/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //Sailplane Name UILabel
    spName = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 200.0f, 25.0f)];
    if (spName != nil) {
        spName.text = @"Sailplane Name: ";
        spName.textAlignment = NSTextAlignmentLeft;
        [self.view addSubview:spName];
    }
    
    //Sailplane Type UILabel
    sailplaneType = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 200.0f, 25.0f)];
    if (sailplaneType != nil) {
        sailplaneType.text = @"Sailplane Type: ";
        sailplaneType.textAlignment = NSTextAlignmentLeft;
        [self.view addSubview:sailplaneType];
    }
    
    //Glide Ratio UILabel
    spGlide = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 200.0f, 25.0f)];
    if (spGlide != nil) {
        spGlide.text = @"Glide Ratio: ";
        spGlide.textAlignment = NSTextAlignmentLeft;
        [self.view addSubview:spGlide];
    }
    
    //Total distance UILabel
    spDistance = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 150.0f, 200.0f, 25.0f)];
    if (spDistance != nil) {
        spDistance.text = @"Max distance from 2000 feet: ";
        spDistance.textAlignment = NSTextAlignmentLeft;
        [self.view addSubview:spDistance];
    }
    
    
    singleSeatSailplane *mini = (singleSeatSailplane*)[sailplaneFactory createNewSailplane:SINGLE];
    [mini setGlideRatio:40];
//    [mini setPricePoint:@"HIGH!"];
    NSLog(@"The glide ratio is %d", [mini glideRatio]);
    [mini calculateFlightTime];
    
//    NSLog()
    NSLog(@"Aerobat? %@", [mini isAerobatic]? @"yes" : @"no");
    NSLog(@"price is %@", [mini pricePoint]);
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
