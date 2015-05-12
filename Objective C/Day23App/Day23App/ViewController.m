//
//  ViewController.m
//  Day23App
//
//  Created by Dan Luong on 5/12/15.
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

- (IBAction)tappedProcessInForeground:(id)sender {
    for (int i=0; i<100; i++) {
        [NSThread sleepForTimeInterval:0.05];
        NSLog(@"%i", i);
    }
}

- (IBAction)tappedUpdateLabel:(id)sender {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"HH:mm:ss"];
    NSString *stringFromDate = [formatter stringFromDate:[NSDate date]];
    self.lblInfo.text = [stringFromDate stringByAppendingFormat:@"\n%@", self.lblInfo.text];
}

- (IBAction)tappedProcessInBackground:(id)sender {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        for (int i = 0; i< 100; i++) {
            [NSThread sleepForTimeInterval:.05];
            NSLog(@"%i", i);
        }
        
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self updateLabelWhenBackgroundDone];
        });
    });
}

- (void)updateLabelWhenBackgroundDone {
    self.lblInfo.text = [@"Background Done!" stringByAppendingFormat:@"\n%@", self.lblInfo.text];
}
@end
