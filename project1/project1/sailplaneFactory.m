//
//  sailplaneFactory.m
//  project1
//  AOC2 1304 Jason Bentley
//  Created by theOwner on 4/9/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "sailplaneFactory.h"

@implementation sailplaneFactory

//create sailplane based on sailplane type
+(baseSailplane *)createNewSailplane:(int)sailplaneType
{
    if (sailplaneType == 0) {
        return [[singleSeatSailplane alloc] init];
    }
    else if (sailplaneType == 1) {
        return [[doubleSeatSailplane alloc] init];
    }
    else if (sailplaneType == 2) {
        return [[tripleSeatSailplane alloc] init];
    }
    else {
        return nil;
    }
}

@end
