//
//  ViewController.m
//  Day30App
//
//  Created by Dan Luong on 5/14/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "ViewController.h"
#import "GAI.h"
#import "GAIDictionaryBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.screenName = @"My First Screen";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tappedButtonOne:(id)sender {
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"ui_action"     // Event category (required)
                                                          action:@"button_press"  // Event action (required)
                                                           label:@"ButtonOne"          // Event label
                                                           value:nil] build]];    // Event value
}

- (IBAction)tappedButtonTwo:(id)sender {
}
@end
