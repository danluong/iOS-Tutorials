//
//  ViewController.m
//  Day9App
//
//  Created by Dan Luong on 5/5/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnButton:(id)sender {
}

-(void) textFieldDidBeginEditing:(UITextField *)textField{
    if (textField == self.txtFieldOne) {
        textField.text = @"don't edit me!";
    }
}

-(BOOL) textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField == self.txtFieldTwo && [textField.text isEqualToString:@"No Change"]) {
        return NO;
    }
    return YES;
}

- (BOOL) textFieldShouldEndEditing:(UITextField *)textField {
    if (textField == self.txtFieldOne &&
        [textField.text isEqualToString:@"done"]) {
        return NO;
    }
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if (textView == self.txtView) {
        NSInteger newTextLength = [textView.text length] - range.length + [text length];
        if (newTextLength > 45) {
            return NO;
        }
    }
    return YES;
}
@end
