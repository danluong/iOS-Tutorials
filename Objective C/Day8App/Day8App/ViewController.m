//
//  ViewController.m
//  Day8App
//
//  Created by Dan Luong on 5/5/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "ViewController.h"

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

- (IBAction)tappedFetchData1:(id)sender {
    NSString *queryString = [NSString stringWithFormat:@"http://chrisrisner.com/Labs/day7test.php?name=%@", [self.txtName text]];
    NSMutableURLRequest *theRequest=[NSMutableURLRequest
                              requestWithURL:[NSURL URLWithString: queryString]
                              cachePolicy:NSURLRequestUseProtocolCachePolicy
                              timeoutInterval:60.0];
    [theRequest setHTTPMethod:@"POST"];
    NSString *post = [NSString stringWithFormat:@"postedValue=%@", [self.txtName text]];
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding];
    [theRequest setHTTPBody:postData];
    NSURLConnection *con = [[NSURLConnection alloc] initWithRequest:theRequest delegate:self];
    if (con) {
        _receivedData=[NSMutableData data];
    } else {
        //something bad happened
    }
}

- (IBAction)tappedFetchData2:(id)sender {
    NSString *queryString = [NSString stringWithFormat:@"http://chrisrisner.com/Labs/day7test.php?name=%@", [self.txtName text]];
    NSMutableURLRequest *theRequest=[NSMutableURLRequest
                                     requestWithURL:[NSURL URLWithString:
                                                     queryString]
                                     cachePolicy:NSURLRequestUseProtocolCachePolicy
                                     timeoutInterval:60.0];
    NSDictionary* jsonDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                    @"Value1", @"Key1",
                                    @"Value2", @"Key2",
                                    nil];
    NSError *error;
    NSData* jsonData = [NSJSONSerialization dataWithJSONObject:jsonDictionary
                                                       options:NSJSONWritingPrettyPrinted error:&error];
    [theRequest setHTTPMethod:@"POST"];
    [theRequest addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    // should check for and handle errors here but we aren't
    [theRequest setHTTPBody:jsonData];
    
    [NSURLConnection sendAsynchronousRequest:theRequest queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        if (error) {
            //do something with error
        } else {
            NSString *responseText = [[NSString alloc] initWithData:data encoding: NSASCIIStringEncoding];
            NSLog(@"Response: %@", responseText);
            
            NSString *newLineStr = @"\n";
            responseText = [responseText stringByReplacingOccurrencesOfString:@"<br />" withString:newLineStr];
            [self.lblData setText:responseText];
        }
    }];
}

-(void)connection:(NSConnection*)conn didReceiveResponse:(NSURLResponse *)response
{
    if (_receivedData == NULL) {
        _receivedData = [[NSMutableData alloc] init];
    }
    [_receivedData setLength:0];
    NSLog(@"didReceiveResponse: responseData length:(%lu)", (unsigned long)_receivedData.length);
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [_receivedData appendData:data];
}


- (void)connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error {
    NSLog(@"Connection failed! Error - %@ %@",
          [error localizedDescription],
          [[error userInfo] objectForKey:NSURLErrorFailingURLStringErrorKey]);
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Succeeded! Received %lu bytes of data",(unsigned long)[_receivedData length]);
    
    NSString *responseText = [[NSString alloc] initWithData:_receivedData encoding: NSASCIIStringEncoding];
    NSLog(@"Response: %@", responseText);
    
    NSString *newLineStr = @"\n";
    responseText = [responseText stringByReplacingOccurrencesOfString:@"<br />" withString:newLineStr];
    
    [self.lblData setText:responseText];
}
@end
