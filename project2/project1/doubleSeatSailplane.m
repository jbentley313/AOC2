//
//  doubleSeatSailplane.m
//  project1
//  AOC2 1304 Jason Bentley
//  Created by theOwner on 4/9/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "doubleSeatSailplane.h"

@implementation doubleSeatSailplane

//create geter and setter methods for each property
@synthesize pilotCount, flightDistance;

//customize init
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setGlideRatio:32];
        [self setPricePoint:(@"medium")];
        [self setIsAerobatic:NO];
        [self setPilotCount:ZERO];
    }
    return self;
};

//overwrite calc flight time
-(void)calculateFlightTime
{
    if (pilotCount == ZERO) {
        [self setFlightDistance:(2000*0)];
        NSLog(@"The flight distance from 2000 feet is %i miles.  It's hard to fly a plane without a pilot.", flightDistance);
    }
    else if (pilotCount == ONE) {
        [self setFlightDistance:((2000*self.glideRatio)/5280)+2];
        NSLog(@"The flight distance from 2000 feet is %i miles.", flightDistance);
    }
    else if (pilotCount == TWO) {
        [self setFlightDistance:((2000*self.glideRatio)/5280)];
        NSLog(@"The flight distance from 2000 feet is %i miles.", flightDistance);
    }
}
@end
