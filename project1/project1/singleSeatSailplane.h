//
//  singleSeatSailplane.h
//  project1
//
//  Created by theOwner on 4/9/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "baseSailplane.h"

@interface singleSeatSailplane : baseSailplane
{
    int selfPowered;
}

//enum if sailplane has power
typedef enum{
    NONE,
    GAS,
    ELECTRIC
}selfPowered;

@property int power;
@end
