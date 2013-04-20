//
//  addViewController.h
//  project3
//
//  Created by theOwner on 4/19/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol addViewDelegate <NSObject>


-(void)didClose:(NSString*)nameString;

@end

@interface addViewController : UIViewController <UITextFieldDelegate> 
{
        IBOutlet UITextField *eventText;
        
        id<addViewDelegate> delegate;
}

@property (strong) id<addViewDelegate> delegate;

-(IBAction)onClick2:(id)sender;

-(IBAction)onChange:(id)sender;


@end
