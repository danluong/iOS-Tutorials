//
//  ViewController.m
//  Day24App
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
    // viewDidLoad is only called once
    
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"viewDidLoad");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) loadView{
    [super loadView];
    NSLog(@"loadView");
}

-(void) viewWillAppear:(BOOL)animated{
    // happens after viewDidLoad, may be called many times
    NSLog(@"viewWillAppear");
}

-(void) viewDidAppear:(BOOL)animated{
    NSLog(@"viewDidAppear");
}

-(void) viewWillLayoutSubviews{
    NSLog(@"viewWillLayoutSubviews");
}

-(void) viewDidLayoutSubviews{
    NSLog(@"viewDidLayoutSubviews");
}

-(void) viewWillDisappear:(BOOL)animated{
    // save state of textboxes here
    
    NSLog(@"viewWillDisappear");
}

-(void) viewDidDisappear:(BOOL)animated{
    NSLog(@"viewDidDisappear");
}
@end
