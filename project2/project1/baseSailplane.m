//
//  baseSailplane.m
//  project1
//  AOC2 1304 Jason Bentley
//  Created by theOwner on 4/9/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "baseSailplane.h"

@implementation baseSailplane

//create geter and setter methods for each property
@synthesize glideRatio, isAerobatic, pricePoint, flightDistance;

//initialize base sailplane
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setGlideRatio:0];
        [self setIsAerobatic:NO];
        [self setPricePoint:@""];
        [self setFlightDistance:0];
        
        
    }
    return self;
}

//base flight time calculation
-(void)calculateFlightTime
{
    [self setFlightDistance:((2000*self.glideRatio)/5280)];
    NSLog(@"The flight distance from 2000 feet is %i miles.", flightDistance);
}

@end
