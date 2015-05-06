//
//  ViewController.m
//  Day11App
//
//  Created by Dan Luong on 5/6/15.
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

- (IBAction)tappedSaveData:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setValue:@"My saved data" forKey:@"infoString"];
    [defaults synchronize];
}

- (IBAction)tappedLoadData:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.lblInfo.text = [defaults valueForKey:@"infoString"];
}
@end
