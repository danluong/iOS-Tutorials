//
//  ViewController.m
//  Day17App
//
//  Created by Dan Luong on 5/8/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "ViewController.h"
#import "CustomObject.h"

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

- (IBAction)tappedButtonOne:(id)sender {
    NSLog(@"Hello debug console");
    NSLog(@"Sender: %@", sender);
}

- (IBAction)tappedButtonTwo:(id)sender {
    UIButton *button = sender;
    NSLog(@"Sender as button: %@", sender);
    NSLog(@"Button text: %@", button.titleLabel.text);
}

- (IBAction)tappedButtonThree:(id)sender {
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    [dictionary setObject:@"value1" forKey:@"1"];
    [dictionary setObject:@"value2" forKey:@"2"];
    [dictionary setObject:@"value3" forKey:@"3"];
    NSLog(@"Dictionary: %@", dictionary);
    
    NSArray  * array = [NSArray arrayWithObjects:@"item1",@"item2",@"item3",nil];
    NSLog(@"Array: %@", array);
}

- (IBAction)tappedButtonFour:(id)sender {
    CustomObject *customObject = [[CustomObject alloc] init];
    customObject.name = @"object name";
    customObject.number = [NSNumber numberWithInt:42];
    NSLog(@"CustomObject: %@", customObject);
}
@end
