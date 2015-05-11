//
//  ViewController.m
//  Day18App
//
//  Created by Dan Luong on 5/11/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *urlString = [[NSUserDefaults standardUserDefaults] objectForKey:@"url"];
    if (urlString) {
        self.lblInfo.text = urlString;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
