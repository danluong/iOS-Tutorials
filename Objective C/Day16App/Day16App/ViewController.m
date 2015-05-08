//
//  ViewController.m
//  Day16App
//
//  Created by Dan Luong on 5/8/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    if (orientation == UIInterfaceOrientationLandscapeLeft) {
        NSLog(@"Landscape left");
        self.lblInfo.text = @"Landscape left";
    } else if (orientation == UIInterfaceOrientationLandscapeRight) {
        NSLog(@"Landscape right");
        self.lblInfo.text = @"Landscape right";
    } else if (orientation == UIInterfaceOrientationPortrait) {
        NSLog(@"Portrait");
        self.lblInfo.text = @"Portrait";
    } else if (orientation == UIInterfaceOrientationPortraitUpsideDown) {
        NSLog(@"Upside down");
        self.lblInfo.text = @"Upside down";
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration  {
    switch (toInterfaceOrientation) {
        case UIInterfaceOrientationLandscapeLeft:
            self.lblInfo.text = @"Left";
            break;
        case UIInterfaceOrientationLandscapeRight:
            self.lblInfo.text = @"Right";
            break;
        case UIInterfaceOrientationPortrait:
            self.lblInfo.text = @"Up";
            break;
        case UIInterfaceOrientationPortraitUpsideDown:
            self.lblInfo.text = @"Down";
            break;
        default:
            break;
    }
}


//-(BOOL) shouldAutorotate {
//    // disable rotation
//    return NO;
//}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskPortrait;
}

@end
