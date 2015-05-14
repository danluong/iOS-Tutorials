//
//  ViewController.h
//  Day29App
//
//  Created by Dan Luong on 5/14/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface ViewController : UIViewController <ADBannerViewDelegate>
@property (weak, nonatomic) IBOutlet ADBannerView *banner;


@end

