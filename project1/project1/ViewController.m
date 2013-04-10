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
    singleSeatSailplane *mini = (singleSeatSailplane*)[sailplaneFactory createNewSailplane:SINGLE];
    [mini setGlideRatio:50];
//    [mini setPricePoint:@"HIGH!"];
    NSLog(@"The glide ratio is %d", [mini glideRatio]);
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
