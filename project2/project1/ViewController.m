//
//  ViewController.m
//  project1
//  AOC2 1304 Jason Bentley
//
//  Created by theOwner on 4/8/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "ViewController.h"
#import "glideRatioManager.h"
#import "InfoViewController.h"

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
    int selectedVal = currentValue;
    UIButton *button = (UIButton*)sender;
    if (button != nil) {
        if (button.tag == 0) {
            
            buttonClickVal = 0;
            
            //disable current selected button while enabling other buttons
            spName1.enabled = false;
            spName2.enabled = true;
            spName3.enabled = true;
            
            spName1Details.text = @"You have chosen a single seat sailplane. Please choose a glide ratio.";
            stepControl.hidden = NO;
            glideStepLabel.hidden = NO;
            
            
            
            
            
        } else if (button.tag == 1) {
    
            buttonClickVal = 1;
            
            //disable current selected button while enabling other buttons
            spName1.enabled = true;
            spName2.enabled = false;
            spName3.enabled = true;
            
            spName1Details.text = @"You have chosen a double seat sailplane. Please choose a glide ratio.";
            stepControl.hidden = NO;
            glideStepLabel.hidden = NO;
            
            
            
            
        } else if (button.tag == 2) {
            
            buttonClickVal = 2;
            
            //disable current selected button while enabling other buttons
            spName1.enabled = true;
            spName2.enabled = true;
            spName3.enabled = false;
            
            spName1Details.text = @"You have chosen a triple seat sailplane. Please choose a glide ratio.";
            stepControl.hidden = NO;
            glideStepLabel.hidden = NO;
            
            
            //Execute Button Actions
        } else if (button.tag == 3) {
            
            
            
            if (buttonClickVal == 0) {
                
                singleSeatSailplane *mini = (singleSeatSailplane*)[sailplaneFactory createNewSailplane:SINGLE];
                if (mini !=nil) {
                    [mini setGlideRatio:selectedVal];
                    [mini setPricePoint:@"high"];
                    [mini setPower:NONE];
                    [mini calculateFlightTime];
                    [mini setIsAerobatic:YES];
                    
                    if (spName1Details != nil) {
                        spName1Details.text = [NSString stringWithFormat:@"With a glide ratio of %d:1, this %@ sailplane will fly %d miles at 2000 feet. Price: %@.", [mini glideRatio], [mini isAerobatic]? @"aerobatic" : @"non-aerobatic", [mini flightDistance], [mini pricePoint] ];
                        spName1Details.textAlignment = NSTextAlignmentLeft;
                        spName1Details.frame = CGRectMake(spName1Details.frame.origin.x, spName1Details.frame.origin.y, 200.0f, 300.0f);
                        [self.view addSubview:spName1Details];
                    }
                }
                
            } else if (buttonClickVal == 1) {
                doubleSeatSailplane *trainer = (doubleSeatSailplane*)[sailplaneFactory createNewSailplane:DOUBLE];
                if (trainer != nil) {
                    [trainer setGlideRatio:selectedVal];
                    [trainer setPricePoint:@"medium"];
                    [trainer setPilotCount:TWO];
                    [trainer calculateFlightTime];
                    [trainer setIsAerobatic:NO];
                
               // Sailplane2 Details UILabel
                    if (spName2Details != nil) {
                        spName2Details.text = [NSString stringWithFormat:@"With a glide ratio of %d:1, this %@ sailplane will fly %d miles at 2000 feet. Price: %@.", [trainer glideRatio], [trainer isAerobatic]? @"aerobatic" : @"non-aerobatic", [trainer flightDistance], [trainer pricePoint] ];
                        spName2Details.textAlignment = NSTextAlignmentLeft;
                        [self.view addSubview:spName2Details];
                    }
                }

            } else if (buttonClickVal == 2) {
                tripleSeatSailplane *family = (tripleSeatSailplane*)[sailplaneFactory createNewSailplane:TRIPLE];
                if (family != nil) {
                    [family setGlideRatio:selectedVal];
                    [family setPricePoint:@"high"];
                    [family calculateFlightTime];
                
                //Sailplane3 Details UILabel
                    if (spName3Details != nil) {
                        spName3Details.text = [NSString stringWithFormat:@"With a glide ratio of %d:1, this sailplane will fly %d miles at 2000 feet. Price: %@.", [family glideRatio],[family flightDistance], [family pricePoint]];
                        spName3Details.textAlignment = NSTextAlignmentLeft;
                        [self.view addSubview:spName3Details];
                    }
                }
            }
            stepControl.value = 19;
            
            
            //Info Button Actions
        } else if (button.tag == 4) {
            InfoViewController *infoView = [[InfoViewController alloc] initWithNibName:@"infoView" bundle:nil];
            if (infoView !=nil) {
                [self presentViewController:infoView animated:YES completion:nil];
            }
        }
    }
}

-(IBAction)onChange:(id)sender;
{
    UISegmentedControl *segmentControl = (UISegmentedControl*)sender;
    if (segmentControl != nil) {
        int selectedIndex = segmentControl.selectedSegmentIndex;
        if (selectedIndex == 0) {
            self.view.backgroundColor = [UIColor cyanColor];
        }
        else if (selectedIndex == 1) {
            self.view.backgroundColor = [UIColor magentaColor];
        }
        else if (selectedIndex == 2) {
            self.view.backgroundColor = [UIColor greenColor];
        }
    }
}

-(IBAction)onStep:(id)sender;
{
    stepControl = (UIStepper*)sender;
    if (stepControl != nil) {
        currentValue = stepControl.value;
        spName1Details.text = [NSString stringWithFormat:@"Glide ratio: %d", currentValue];
    }
}


@end

