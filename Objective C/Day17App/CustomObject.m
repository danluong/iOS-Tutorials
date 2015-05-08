//
//  CustomObject.m
//  Day17App
//
//  Created by Dan Luong on 5/8/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "CustomObject.h"

@implementation CustomObject

-(NSString *) description{
    return [NSString stringWithFormat:@"Object name: %@, Object number: %@", self.name, self.number];
}
@end
