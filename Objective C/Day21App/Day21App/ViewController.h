//
//  ViewController.h
//  Day21App
//
//  Created by Dan Luong on 5/11/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate>
- (IBAction)tappedUseCamera:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

