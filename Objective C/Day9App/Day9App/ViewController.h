//
//  ViewController.h
//  Day9App
//
//  Created by Dan Luong on 5/5/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txtFieldOne;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldTwo;
@property (weak, nonatomic) IBOutlet UITextView *txtView;
@property (weak, nonatomic) IBOutlet UIButton *tappedButton;

- (IBAction)btnButton:(id)sender;


@end

