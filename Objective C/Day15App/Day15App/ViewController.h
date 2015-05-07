//
//  ViewController.h
//  Day15App
//
//  Created by Dan Luong on 5/7/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>
#import <MessageUI/MFMessageComposeViewController.h>
#import <Social/Social.h>

@interface ViewController : UIViewController <MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate>
- (IBAction)tappedEmail:(id)sender;
- (IBAction)tappedSMS:(id)sender;
- (IBAction)tappedSafari:(id)sender;
- (IBAction)tappedCall:(id)sender;
- (IBAction)tappedTwitter:(id)sender;
- (IBAction)tappedFacebook:(id)sender;


@end

