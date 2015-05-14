//
//  ViewController.m
//  Day28App
//
//  Created by Dan Luong on 5/13/15.
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

- (IBAction)tappedProcess:(id)sender {
    [self.indicator startAnimating];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        NSLog(@"Start");
        //Do EXTREME PROCESSING!!!
        for (int i = 0; i< 100; i++) {
            [NSThread sleepForTimeInterval:.05];
            NSLog(@"%i", i);
            dispatch_async(dispatch_get_main_queue(), ^{
                [self updateProgressBar:i];
            });
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self backgroundDone];
        });
    });
}

- (void)backgroundDone {
    NSLog(@"Done");
    [self.indicator stopAnimating];
}
- (void)updateProgressBar:(int)count {
    float percent = count/100.0;
    [self.progress setProgress:percent];
}
@end
