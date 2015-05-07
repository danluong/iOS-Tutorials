//
//  ViewController.m
//  Day14App
//
//  Created by Dan Luong on 5/7/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSURL *url = [[NSURL alloc]initWithString:@"http://www.google.com"];
//    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url];
//    self.webView.scalesPageToFit = YES;
//    [self.webView loadRequest:request];

    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"LocalPage" ofType:@"html"            ];
    NSString *htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    //Append javascript
//    NSString *script = @"<script>alert(\"This is an alert!!\");</script>";
//    htmlString = [htmlString stringByAppendingString:script];
    self.webView.delegate = self;

    [self.webView loadHTMLString:htmlString baseURL:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)webView:(UIWebView*)webView shouldStartLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType {
    NSURL *URL = [request URL];
    if ([[URL scheme] isEqualToString:@"callmycode"]) {
        NSString *urlString = [[request URL] absoluteString];
        NSArray *urlParts = [urlString componentsSeparatedByString:@":"];
        //check to see if we just got the scheme
        if ([urlParts count] > 1) {
            NSArray *parameters = [[urlParts objectAtIndex:1] componentsSeparatedByString:@"&"];
            NSString *methodName = [parameters objectAtIndex:0];
            NSString *variableName = [parameters objectAtIndex:1];
            
            NSString *message = [NSString stringWithFormat:@"Obj-c from js with methodname=%@ and variablename=%@", methodName, variableName];
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Great" message:message delegate: self cancelButtonTitle: nil otherButtonTitles: @"OK",nil, nil];
            [alert show];
        }
    }
    return YES;
}
@end
