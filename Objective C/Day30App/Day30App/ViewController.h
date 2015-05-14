//
//  ViewController.h
//  Day30App
//
//  Created by Dan Luong on 5/14/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GAITrackedViewController.h"

@interface ViewController : GAITrackedViewController
@property (weak, nonatomic) IBOutlet UITextField *txtInfo;
- (IBAction)tappedButtonOne:(id)sender;


@end

