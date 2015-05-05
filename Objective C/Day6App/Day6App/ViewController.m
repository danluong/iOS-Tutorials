//
//  ViewController.m
//  Day6App
//
//  Created by Dan Luong on 5/5/15.
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

- (IBAction)tappedNavItem:(id)sender {
    SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

- (IBAction)tappedShowNewView:(id)sender {
    SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    secondViewController.delegate = self;
    [self presentViewController:secondViewController animated:YES completion:nil];
}
-(void) doSomethingWithSecondViewController:(SecondViewController *)secondViewController    {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
