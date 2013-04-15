//
//  tripleSeatSailplane.m
//  project1
//  AOC2 1304 Jason Bentley
//  Created by theOwner on 4/9/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "tripleSeatSailplane.h"

@implementation tripleSeatSailplane

//create geter and setter methods for each property
@synthesize flyable, flightDistance;

//customize init
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setGlideRatio:28];
        [self setPricePoint:(@"high")];
        [self setIsAerobatic:NO];
        [self setFlyable:FLY];
    }
    return self;
};

-(void)calculateFlightTime
{
    if (flyable == FLY) {
        [self setFlightDistance:((2000*self.glideRatio)/5280)-1];
        NSLog(@"The flight distance from 2000 feet is %i miles.", flightDistance);
    }
    else if (flyable == NOFLY) {
        [self setFlightDistance:((2000*self.glideRatio)/5280)*0];
        
        
    }
}


@end
