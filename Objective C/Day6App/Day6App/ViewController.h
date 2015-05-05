//
//  ViewController.h
//  Day6App
//
//  Created by Dan Luong on 5/5/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <SecondViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lblInfo;
@property (weak, nonatomic) IBOutlet UITextField *txtText;
- (IBAction)tappedClickMe:(id)sender;
- (IBAction)tappedNavItem:(id)sender;
- (IBAction)tappedShowNewView:(id)sender;


@end

