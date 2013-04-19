//
//  baseSailplane.h
//  project2
//  AOC2 1304 Jason Bentley
//  Created by theOwner on 4/9/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseSailplane : NSObject
{
    int sailplaneEnum;
}

typedef enum {
    SINGLE,
    DOUBLE,
    TRIPLE
} sailplaneEnum;

//data members for glide ratio, price point, max speed, and isAerobatic bool
@property int glideRatio;
@property (strong) NSString *pricePoint;
@property bool isAerobatic;
@property int flightDistance;


//initialize
-(id)init;

//calculation method for flight time
-(void)calculateFlightTime;




@end
