//
//  textDateManager.h
//  project4
//
//  Created by theOwner on 4/27/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "textDateManager.h"
@interface textDateManager : NSObject
{
//    NSString *sharedText;
}

+(void)CreateInstance;
+(textDateManager*)GetInstance;
-(NSString*)printSettings:(NSString*)passedString;

@property (nonatomic, strong) NSString *passedText;

@end
