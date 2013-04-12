//
//  singleSeatSailplane.m
//  project1
//
//  Created by theOwner on 4/9/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "singleSeatSailplane.h"

@implementation singleSeatSailplane

@synthesize glideRatio, pricePoint, isAerobatic, flightDistance;

//customize init
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setGlideRatio:38];
        [self setPricePoint:(@"low")];
        [self setIsAerobatic:YES];
       
    }
    return self;
};


-(void)calculateFlightTime
{
    [self setFlightDistance:((2000*self.glideRatio)/5280)];
    NSLog(@"The flight distance from 2000 feet is %i miles.", flightDistance);
}

@end
