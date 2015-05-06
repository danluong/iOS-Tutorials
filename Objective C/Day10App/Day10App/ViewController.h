//
//  ViewController.h
//  Day10App
//
//  Created by Dan Luong on 5/6/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblInfo;
- (IBAction)tappedSaveData:(id)sender;
- (IBAction)tappedLoadData:(id)sender;


@end

