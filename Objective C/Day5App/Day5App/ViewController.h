//
//  ViewController.h
//  Day5App
//
//  Created by Dan Luong on 5/4/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblInfo;
@property (weak, nonatomic) IBOutlet UITextField *txtText;
- (IBAction)tappedClickMe:(id)sender;
- (IBAction)tappedNavButton:(id)sender;
- (IBAction)tappedShowNewView:(id)sender;


@end

