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
    
    
    
    
    
    
    
    
    
    
    
    
    //Sailplane1 UILabel
//    spName1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 95.0f, 25.0f)];
//    if (spName1 != nil)
//    {
//        spName1.text = @"Sailplane 1: ";
//        spName1.backgroundColor = [UIColor yellowColor];
//        spName1.textAlignment = NSTextAlignmentLeft;
//        [self.view addSubview:spName1];
//    }
    
    //Sailplane1 Details UILabel
   
//    if (spName1Details != nil) {
//        spName1Details.text = [NSString stringWithFormat:@"With a glide ratio of %d:1, this %@ sailplane will fly %d miles at 2000 feet. Price: %@.", [mini glideRatio], [mini isAerobatic]? @"aerobatic" : @"non-aerobatic", [mini flightDistance], [mini pricePoint] ];
//        spName1Details.textAlignment = NSTextAlignmentLeft;
//        spName1Details.numberOfLines = 0;
//        [spName1Details sizeToFit];
//        [self.view addSubview:spName1Details];
//    }

    
    //Sailplane2 UILabel
//    spName2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 150.0f, 95.0f, 25.0f)];
//    if (spName2 != nil) {
//        spName2.text = @"Sailplane 2: ";
//        spName2.backgroundColor = [UIColor yellowColor];
//        spName2.textAlignment = NSTextAlignmentLeft;
//        [self.view addSubview:spName2];
//    }

    
    //Sailplane2 Details UILabel
//    spName2Details = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 150.0f, 240.0f, 30.0f)];
//    if (spName2Details != nil) {
//        spName2Details.text = [NSString stringWithFormat:@"With a glide ratio of %d:1, this %@ sailplane will fly %d miles at 2000 feet. Price: %@.", [trainer glideRatio], [trainer isAerobatic]? @"aerobatic" : @"non-aerobatic", [trainer flightDistance], [trainer pricePoint]];
//        spName2Details.textAlignment = NSTextAlignmentLeft;
//        spName2Details.numberOfLines = 0;
//        [spName2Details sizeToFit];
//        [self.view addSubview:spName2Details];
//    }

    
    //Sailplane3 UILabel
//    spName3 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 300.0f, 95.0f, 25.0f)];
//    if (spName3 != nil) {
//        spName3.text = @"Sailplane 3: ";
//        spName3.backgroundColor = [UIColor yellowColor];
//        spName3.textAlignment = NSTextAlignmentLeft;
//        [self.view addSubview:spName3];
//    }

    

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
            //create single seat sailplane
            singleSeatSailplane *mini = (singleSeatSailplane*)[sailplaneFactory createNewSailplane:SINGLE];
            if (mini != nil) {
                [mini setGlideRatio:40];
                [mini setPricePoint:@"high"];
                [mini setPower:NONE];
                [mini calculateFlightTime];
                [mini setIsAerobatic:YES];
            }
            if (spName1Details != nil) {
                spName1Details.text = [NSString stringWithFormat:@"With a glide ratio of %d:1, this %@ sailplane will fly %d miles at 2000 feet. Price: %@.", [mini glideRatio], [mini isAerobatic]? @"aerobatic" : @"non-aerobatic", [mini flightDistance], [mini pricePoint] ];
                spName1Details.textAlignment = NSTextAlignmentLeft;
                spName1Details.numberOfLines = 0;
                [spName1Details sizeToFit];
                [self.view addSubview:spName1Details];
            }
            
        }
        else if (button.tag == 1) {
            //create double seat sailplane
            doubleSeatSailplane *trainer = (doubleSeatSailplane*)[sailplaneFactory createNewSailplane:DOUBLE];
            if (trainer != nil) {
                [trainer setGlideRatio:35];
                [trainer setPricePoint:@"medium"];
                [trainer setPilotCount:TWO];
                [trainer calculateFlightTime];
                [trainer setIsAerobatic:NO];
                if (spName2Details != nil) {
                    spName2Details.text = [NSString stringWithFormat:@"With a glide ratio of %d:1, this %@ sailplane will fly %d miles at 2000 feet. Price: %@.", [trainer glideRatio], [trainer isAerobatic]? @"aerobatic" : @"non-aerobatic", [trainer flightDistance], [trainer pricePoint] ];
                    spName2Details.textAlignment = NSTextAlignmentLeft;
                    spName2Details.numberOfLines = 0;
                    [spName2Details sizeToFit];
                    [self.view addSubview:spName2Details];
                }
                
                
            }
        } else if (button.tag == 2) {
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
                        spName3Details.numberOfLines = 0;
                        [spName3Details sizeToFit];
                        [self.view addSubview:spName3Details];
                    }
            }
        }
    }
}


@end
