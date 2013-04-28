//
//  textDateManager.m
//  project4
//
//  Created by theOwner on 4/27/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import "textDateManager.h"
#import "AddEventViewController.h"

@implementation textDateManager
@synthesize passedText;


static textDateManager *_instance = nil;

+(void)CreateInstance
{
    if (_instance == nil) {
        [[self alloc] init];
    }
}

+(textDateManager*)GetInstance
{
    return _instance;
}

+(id)alloc
{
    _instance = [super alloc];
    return _instance;
    
}

-(NSString*)printSettings:(NSString*)passedString;
{
    
    NSLog(@"from singleton %@", passedString);
    [self setPassedText:passedString];
    return passedText;
}

@end
