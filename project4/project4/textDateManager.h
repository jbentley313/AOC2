//
//  textDateManager.h
//  project4
//
//  Created by Jason Bentley on 4/27/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "textDateManager.h"
@interface textDateManager : NSObject
{

}

+(void)CreateInstance;
+(textDateManager*)GetInstance;
-(void)printSettings:(NSString*)passedString;
-(void)dateSettings:(NSString*)passedDateString;

@property (nonatomic, strong) NSString *passedText;
@property (nonatomic, strong) NSString *passedDate;


@end
