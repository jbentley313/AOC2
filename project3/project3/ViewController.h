//
//  ViewController.h
//  project3
//
//  Created by theOwner on 4/18/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addViewController.h"

@interface ViewController : UIViewController <addViewDelegate>
{
    
    IBOutlet UITextView *eventView;
    
}

-(IBAction)onClick:(id)sender;


@end
