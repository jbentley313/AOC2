//
//  tripleSeatSailplane.m
//  project1
//
//  Created by theOwner on 4/9/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "tripleSeatSailplane.h"

@implementation tripleSeatSailplane

@synthesize glideRatio, pricePoint, isAerobatic;

//customize init
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setGlideRatio:28];
        [self setPricePoint:(@"high")];
        [self setIsAerobatic:NO];
    }
    return self;
};

@end
