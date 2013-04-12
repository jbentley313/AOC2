//
//  doubleSeatSailplane.h
//  project1
//  AOC2 1304 Jason Bentley
//  Created by theOwner on 4/9/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "baseSailplane.h"

@interface doubleSeatSailplane : baseSailplane

{
    int pilots;
}

//enum for number of pilots onboard
typedef enum {
    ZERO,
    ONE,
    TWO
}pilots;

@property int pilotCount;

@end
