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
@synthesize passedDate;


static textDateManager *_instance = nil;

+(void)CreateInstance
{
    if (_instance == nil) {
        [[self alloc] init];
    }
}

+(textDateManager*)GetInstance
{
    if (_instance != nil) {
        return _instance;
    }
    return nil;
} 

+(id)alloc
{
    _instance = [super alloc];
    return _instance;
    
}

-(void)printSettings:(NSString*)passedString;
{
    
    NSLog(@"from singleton %@", passedString);
    if (passedString != nil) {
        [self setPassedText:passedString];
    }

    
}

-(void)dateSettings:(NSString*)passedDateString;
{
    if (passedDateString != nil) {
        [self setPassedDate:passedDateString];
    }

    
}

@end
