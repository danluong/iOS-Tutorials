//
//  MySingleton.h
//  Day10App
//
//  Created by Dan Luong on 5/6/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject{
    NSString *info;
}

+(MySingleton*) getInstance;

-(void) doSomethingWithString:(NSString *) parameter;
-(NSString*) getInfo;


@end
