//
//  ViewController.m
//  Day10App
//
//  Created by Dan Luong on 5/6/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "MySingleton.h"

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
//    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
//    [delegate doSomethingWithString:@"some text"];
    MySingleton* singleton = [MySingleton getInstance];
    [singleton doSomethingWithString:@"singleton string"];
}

- (IBAction)tappedLoadData:(id)sender {
//    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
//    [self.lblInfo setText: [delegate getInfo]];
    MySingleton *singleton = [MySingleton getInstance];
    [self.lblInfo setText:[singleton getInfo]];
}
@end
