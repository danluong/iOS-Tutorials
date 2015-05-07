//
//  ViewController.h
//  Day12App
//
//  Created by Dan Luong on 5/6/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic,strong) NSManagedObjectContext* managedObjectContext;

@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtInfo;
@property (weak, nonatomic) IBOutlet UITextField *txtNumber;
@property (weak, nonatomic) IBOutlet UILabel *lblCreateDate;
@property (weak, nonatomic) IBOutlet UILabel *lblUpdateDate;

- (IBAction)tappedPrevious:(id)sender;
- (IBAction)tappedNext:(id)sender;
- (IBAction)tappedSaveAsNew:(id)sender;
- (IBAction)tappedLoadData:(id)sender;

@end

