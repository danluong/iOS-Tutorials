//
//  SecondViewController.h
//  Day6App
//
//  Created by Dan Luong on 5/5/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SecondViewController;

@protocol SecondViewControllerDelegate <NSObject>

-(void)doSomethingWithSecondViewController:(SecondViewController*) secondViewController;

@end

@interface SecondViewController : UIViewController
- (IBAction)tappedDismiss:(id)sender;

@property (nonatomic, weak) id <SecondViewControllerDelegate> delegate;

@end


