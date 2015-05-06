//
//  MySingleton.m
//  Day10App
//
//  Created by Dan Luong on 5/6/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "MySingleton.h"

@implementation MySingleton

static MySingleton *singletonInstance;

+(MySingleton*) getInstance{
    if (singletonInstance == nil) {
        singletonInstance = [[super alloc]init];
    }
    return singletonInstance;
}

-(void) doSomethingWithString:(NSString *)parameter {
    info = parameter;
}

-(NSString*) getInfo{
    return info;
}
@end
