//
//  ViewController.h
//  Day7App
//
//  Created by Dan Luong on 5/5/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDelegate> {
    NSMutableData* _receivedData;
}
@property (weak, nonatomic) IBOutlet UILabel *lblData;
@property (weak, nonatomic) IBOutlet UITextField *txtName;

- (IBAction)tappedFetchData1:(id)sender;
- (IBAction)tappedFetchData2:(id)sender;

@end

