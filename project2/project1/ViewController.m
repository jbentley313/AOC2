//
//  ViewController.m
//  project1
//  AOC2 1304 Jason Bentley
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
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil) {
        if (button.tag == 0) {
            
            //disable current selected button while enabling other buttons
            spName1.enabled = false;
            spName2.enabled = true;
            spName3.enabled = true;
            
            //create single seat sailplane
            singleSeatSailplane *mini = (singleSeatSailplane*)[sailplaneFactory createNewSailplane:SINGLE];
            if (mini != nil) {
                [mini setGlideRatio:40];
                [mini setPricePoint:@"high"];
                [mini setPower:NONE];
                [mini calculateFlightTime];
                [mini setIsAerobatic:YES];
            }
            
            //Sailplane1 Details UILables
            if (spName1Details != nil) {
                spName1Details.text = [NSString stringWithFormat:@"With a glide ratio of %d:1, this %@ sailplane will fly %d miles at 2000 feet. Price: %@.", [mini glideRatio], [mini isAerobatic]? @"aerobatic" : @"non-aerobatic", [mini flightDistance], [mini pricePoint] ];
                spName1Details.textAlignment = NSTextAlignmentLeft;
//                spName1Details.numberOfLines = 0;
                [spName1Details sizeToFit];
                [self.view addSubview:spName1Details];
            }
        } else if (button.tag == 1) {
    
            //disable current selected button while enabling other buttons
            spName1.enabled = true;
            spName2.enabled = false;
            spName3.enabled = true;
            
            //create double seat sailplane
            doubleSeatSailplane *trainer = (doubleSeatSailplane*)[sailplaneFactory createNewSailplane:DOUBLE];
            if (trainer != nil) {
                [trainer setGlideRatio:35];
                [trainer setPricePoint:@"medium"];
                [trainer setPilotCount:TWO];
                [trainer calculateFlightTime];
                [trainer setIsAerobatic:NO];
                
                //Sailplane2 Details UILabel
                if (spName2Details != nil) {
                    spName2Details.text = [NSString stringWithFormat:@"With a glide ratio of %d:1, this %@ sailplane will fly %d miles at 2000 feet. Price: %@.", [trainer glideRatio], [trainer isAerobatic]? @"aerobatic" : @"non-aerobatic", [trainer flightDistance], [trainer pricePoint] ];
                    spName2Details.textAlignment = NSTextAlignmentLeft;
//                    spName2Details.numberOfLines = 0;
                    [spName2Details sizeToFit];
                    [self.view addSubview:spName2Details];
                }
            }
        } else if (button.tag == 2) {
            
            //disable current selected button while enabling other buttons
            spName1.enabled = true;
            spName2.enabled = true;
            spName3.enabled = false;
            
            //create triple seat sailplane
            tripleSeatSailplane *family = (tripleSeatSailplane*)[sailplaneFactory createNewSailplane:TRIPLE];
            if (family != nil) {
                [family setGlideRatio:28];
                [family setPricePoint:@"high"];
                [family calculateFlightTime];
                
                //Sailplane3 Details UILabel
                    if (spName3Details != nil) {
                        spName3Details.text = [NSString stringWithFormat:@"With a glide ratio of %d:1, this sailplane will fly %d miles at 2000 feet. Price: %@.", [family glideRatio],[family flightDistance], [family pricePoint]];
                        spName3Details.textAlignment = NSTextAlignmentLeft;
//                        spName3Details.numberOfLines = 0;
                        [spName3Details sizeToFit];
                        [self.view addSubview:spName3Details];
                    }
            }
        }
    }
}


@end
