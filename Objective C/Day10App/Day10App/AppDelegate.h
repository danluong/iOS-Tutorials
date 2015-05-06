//
//  AppDelegate.h
//  Day10App
//
//  Created by Dan Luong on 5/6/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSString *info;

-(void) doSomethingWithString:(NSString *)parameter;
-(NSString*) getInfo;
@end

