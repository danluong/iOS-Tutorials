//
//  ViewController.m
//  Day15App
//
//  Created by Dan Luong on 5/7/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>

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

- (IBAction)tappedEmail:(id)sender {
    MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc]init];
    [mailComposer setSubject:@"The Subject"];
    [mailComposer setMessageBody:@"The Body" isHTML:NO];
    mailComposer.mailComposeDelegate = self;
    [self presentViewController:mailComposer animated:YES completion:nil];
    
}

-(void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    switch (result)
    {
        case MFMailComposeResultSent:
            //mail sent
            break;
        case MFMailComposeResultCancelled:
            //mail cancelled
            break;
        case MFMailComposeResultSaved:
            //draft saved
            break;
        case MFMailComposeResultFailed:
            //failure
            break;
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)tappedSMS:(id)sender {
    if ([MFMessageComposeViewController canSendText]){
        MFMessageComposeViewController *smsComposer = [[MFMessageComposeViewController alloc]init];
        [smsComposer setBody:@"sms msg body"];
        smsComposer.messageComposeDelegate = self;
        [self presentViewController:smsComposer animated:YES completion:nil];
    }
    
}

-(void) messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
    switch (result) {
        case MessageComposeResultCancelled:
            //cancelled
            break;
        case MessageComposeResultFailed:
            //failed
            break;
        case MessageComposeResultSent:
            //sent
            break;
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)tappedSafari:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com"]];
}

- (IBAction)tappedCall:(id)sender {
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tel+18008008000"]]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel+18008008000"]];
        
    }
    
}

- (IBAction)tappedTwitter:(id)sender {
    SLComposeViewController *socialComposerSheet;
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        socialComposerSheet = [[SLComposeViewController alloc]init];
        socialComposerSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [socialComposerSheet setInitialText:[NSString stringWithFormat:@"My Tweet!",socialComposerSheet.serviceType]];
        [self presentViewController:socialComposerSheet animated:YES completion:nil];
    }
    [socialComposerSheet setCompletionHandler:^(SLComposeViewControllerResult result) {
        NSString *output;
        switch (result) {
            case SLComposeViewControllerResultDone:
                //post worked
                break;
            case SLComposeViewControllerResultCancelled:
                //cancelled
                break;
        }
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Twitter" message:output delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
    }];
}

- (IBAction)tappedFacebook:(id)sender {
    SLComposeViewController *socialComposerSheet;
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        socialComposerSheet = [[SLComposeViewController alloc] init];
        socialComposerSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [socialComposerSheet setInitialText:[NSString stringWithFormat:@"My Tweet!",socialComposerSheet.serviceType]];
        [self presentViewController:socialComposerSheet animated:YES completion:nil];
    }
    [socialComposerSheet setCompletionHandler:^(SLComposeViewControllerResult result) {
        NSString *output;
        switch (result) {
            case SLComposeViewControllerResultDone:
                //post worked
                break;
            case SLComposeViewControllerResultCancelled:
                //cancelled
                break;
        }
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Facebook" message:output delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
    }];
}
@end
