//
//  ViewController.h
//  project1
//  AOC2 1304 Jason Bentley
//  Created by theOwner on 4/8/13.
//  Copyright (c) 2013 theOwner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sailplaneFactory.h"

@interface ViewController : UIViewController
{
    IBOutlet UIButton *spName1;
    IBOutlet UIButton *spName2;
    IBOutlet UIButton *spName3;
    IBOutlet UITextField *spName1Details;
    IBOutlet UITextField *spName2Details;
    IBOutlet UITextField *spName3Details;
    
}

-(IBAction)onClick:(id)sender;
@end
