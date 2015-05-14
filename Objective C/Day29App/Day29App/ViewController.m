//
//  ViewController.m
//  Day29App
//
//  Created by Dan Luong on 5/14/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.banner.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave{
    return YES;
}

- (void) bannerViewDidLoadAd:(ADBannerView *)banner {
    NSLog(@"bannerViewDidLoadAd");
}

- (void) bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    
}

@end
