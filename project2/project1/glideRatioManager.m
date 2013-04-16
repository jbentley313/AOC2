//
//  glideRatioManager.m
//  project2
//
//  Created by theOwner on 4/15/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "glideRatioManager.h"

@implementation glideRatioManager

static glideRatioManager *_instance = nil;

+(void)createInstance;
{
    if (_instance == nil)
    {
        [[self alloc] init];
    }
}

+(glideRatioManager*)getInstance;
{
    return _instance;
}

+(id)alloc
{
    _instance = [super alloc];
    return _instance;
}

-(id)init
{
    if (self == [super init])
    {
        
    }
    return self;
}

-(void)glideSettings
{
    
}

@end
