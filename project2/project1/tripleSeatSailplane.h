//
//  tripleSeatSailplane.h
//  project2
//  AOC2 1304 Jason Bentley
//  Created by theOwner on 4/9/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "baseSailplane.h"

@interface tripleSeatSailplane : baseSailplane
{
    int fly;
}

//enum for a museum plane or a flyable plane
typedef enum {
    FLY,
    NOFLY
}fly;

//data members
@property int flyable;

@end


//will add my overwriting method here