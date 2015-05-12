//
//  ViewController.h
//  Day23App
//
//  Created by Dan Luong on 5/12/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)tappedProcessInForeground:(id)sender;
- (IBAction)tappedUpdateLabel:(id)sender;
- (IBAction)tappedProcessInBackground:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblInfo;

@end

