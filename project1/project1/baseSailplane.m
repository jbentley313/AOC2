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
@synthesize glideRatio, isAerobatic, pricePoint, maxSpeed;

//initialize base sailplane
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setGlideRatio:0];
        [self setMaxSpeed:0];
        [self setIsAerobatic:NO];
        [self setPricePoint:@""];
    }
    return self;
}

-(void)calculateFlightTime
{
    NSLog(@"The flight time is %i", glideRatio);
}

@end
