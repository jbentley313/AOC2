//
//  baseSailplane.m
//  project1
//
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

-(void)calculateFlightTime
{
    [self setFlightDistance:((2000*self.glideRatio)/5280)];
    NSLog(@"The flight distance from 2000 feet is %i miles.", flightDistance);
}

@end
