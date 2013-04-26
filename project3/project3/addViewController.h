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
    IBOutlet UIButton *saveBtn;
    IBOutlet UIButton *closeKeyBtn;
    IBOutlet UIButton *cancelBtn;
    NSDateFormatter *formattedDate;
    
    
        id<addViewDelegate> delegate;
}

@property (strong) id<addViewDelegate> delegate;
@property (retain, nonatomic) NSString *dateString;


-(IBAction)onClick2:(id)sender;


-(IBAction)onChange:(id)sender;


-(void)DisplayAlertWithString:(NSString*)alert;


@end
