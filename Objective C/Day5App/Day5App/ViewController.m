//
//  ViewController.m
//  Day5App
//
//  Created by Dan Luong on 5/4/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

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

- (IBAction)tappedClickMe:(id)sender {
    self.lblInfo.text = self.txtText.text;
}

- (IBAction)tappedNavButton:(id)sender {
    SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

- (IBAction)tappedShowNewView:(id)sender {
    SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    [self presentViewController:secondViewController animated:YES completion:nil];
}
@end
