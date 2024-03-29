//
//  sailplaneFactory.h
//  project2
//  AOC2 1304 Jason Bentley
//  Created by theOwner on 4/9/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseSailplane.h"
#import "singleSeatSailplane.h"
#import "doubleSeatSailplane.h"
#import "tripleSeatSailplane.h"

@interface sailplaneFactory : NSObject

+(baseSailplane *)createNewSailplane: (int)sailplaneType;

@end
