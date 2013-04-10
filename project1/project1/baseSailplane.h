//
//  baseSailplane.h
//  project1
//
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
@property NSString *pricePoint;
@property int maxSpeed;
@property bool isAerobatic;
@property int weight;


//initialize
-(id)init;

//calculation method for flight time
-(void)calculateFlightTime;




@end
