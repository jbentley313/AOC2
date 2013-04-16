//
//  singleSeatSailplane.m
//  project1
//  AOC2 1304 Jason Bentley
//  Created by theOwner on 4/9/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "singleSeatSailplane.h"

@implementation singleSeatSailplane

//create geter and setter methods for each property
@synthesize power;

//customize init
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setGlideRatio:38];
        [self setPricePoint:(@"low")];
        [self setIsAerobatic:NO];
        [self setPower:NONE];
    }
    return self;
};

//overwrite flightTime
-(void)calculateFlightTime
{
    if (power == NONE) {
        [self setFlightDistance:((2000*self.glideRatio)/5280)];
//        NSLog(@"The flight distance from 2000 feet is %i miles.", flightDistance);
    }
    else if (power == GAS) {
        [self setFlightDistance:((2000*self.glideRatio)/5280)+3];
//        NSLog(@"The flight distance from 2000 feet is %i miles.", flightDistance);
    }
    else if (power == ELECTRIC) {
        [self setFlightDistance:((2000*self.glideRatio)/5280)+9];
//        NSLog(@"The flight distance from 2000 feet is %i miles.", flightDistance);
    }
}

@end
