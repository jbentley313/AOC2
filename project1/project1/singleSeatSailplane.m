//
//  singleSeatSailplane.m
//  project1
//
//  Created by theOwner on 4/9/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "singleSeatSailplane.h"

@implementation singleSeatSailplane

@synthesize glideRatio, pricePoint, isAerobatic;

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

@end
