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
    //create single seat sailplane
    singleSeatSailplane *mini = (singleSeatSailplane*)[sailplaneFactory createNewSailplane:SINGLE];
    if (mini != nil) {
        [mini setGlideRatio:40];
        [mini setPricePoint:@"low"];
        [mini setPower:NONE];
        [mini calculateFlightTime];
//        NSLog(@"Aerobat? %@", [mini isAerobatic]? @"yes" : @"no");
//        NSLog(@"price is %@", [mini pricePoint]);
    }
    
    
    //create double seat sailplane
    doubleSeatSailplane *trainer = (doubleSeatSailplane*)[sailplaneFactory createNewSailplane:DOUBLE];
    [trainer setGlideRatio:35];
    [trainer setPricePoint:@"medium"];
    [trainer calculateFlightTime];
    
    //create triple seat sailplane
    tripleSeatSailplane *family = (tripleSeatSailplane*)[sailplaneFactory createNewSailplane:TRIPLE];
    [family setGlideRatio:28];
    [family setPricePoint:@"high"];
    [family calculateFlightTime];
    
    
    
    //Sailplane1 UILabel
    spName1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 95.0f, 25.0f)];
    if (spName1 != nil) {
        spName1.text = @"Sailplane 1: ";
        spName1.backgroundColor = [UIColor yellowColor];
        spName1.textAlignment = NSTextAlignmentLeft;
        [self.view addSubview:spName1];
    }
    
    //Sailplane1 Details UILabel
    spName1Details = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 0.0f, 650.0f, 25.0f)];
    if (spName1Details != nil) {
        spName1Details.text = [NSString stringWithFormat:@"With a glide ratio of %d:1, this sailplane will fly %d miles at 2000 feet. Price: %@.", [mini glideRatio],[mini flightDistance], [mini pricePoint]];
        spName1Details.textAlignment = NSTextAlignmentLeft;
        [self.view addSubview:spName1Details];
    }
    
    
    //Sailplane2 UILabel
    spName2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 95.0f, 25.0f)];
    if (spName2 != nil) {
        spName2.text = @"Sailplane 2: ";
        spName2.backgroundColor = [UIColor yellowColor];
        spName2.textAlignment = NSTextAlignmentLeft;
        [self.view addSubview:spName2];
    }
    
    
    //Sailplane2 Details UILabel
    spName2Details = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 50.0f, 650.0f, 25.0f)];
    if (spName2Details != nil) {
        spName2Details.text = [NSString stringWithFormat:@"With a glide ratio of %d:1, this sailplane will fly %d miles at 2000 feet. Price: %@.", [trainer glideRatio],[trainer flightDistance], [trainer pricePoint]];
        spName2Details.textAlignment = NSTextAlignmentLeft;
        [self.view addSubview:spName2Details];
    }
    
    
    //Sailplane3 UILabel
    spName3 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 95.0f, 25.0f)];
    if (spName3 != nil) {
        spName3.text = @"Sailplane 3: ";
        spName3.backgroundColor = [UIColor yellowColor];
        spName3.textAlignment = NSTextAlignmentLeft;
        [self.view addSubview:spName3];
    }
    
    //Sailplane3 Details UILabel
    spName2Details = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 100.0f, 650.0f, 25.0f)];
    if (spName2Details != nil) {
        spName2Details.text = [NSString stringWithFormat:@"With a glide ratio of %d:1, this sailplane will fly %d miles at 2000 feet. Price: %@.", [family glideRatio],[family flightDistance], [family pricePoint]];
        spName2Details.textAlignment = NSTextAlignmentLeft;
        [self.view addSubview:spName2Details];
    }

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
