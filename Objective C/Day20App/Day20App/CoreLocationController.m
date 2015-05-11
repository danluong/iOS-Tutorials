//
//  CoreLocationController.m
//  
//
//  Created by Dan Luong on 5/11/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "CoreLocationController.h"
#import <CoreLocation/CoreLocation.h>

@implementation CoreLocationController

-(id) init{
    self = [super init];
    if(self != nil){
        self.locationManager = [[CLLocationManager alloc]init];
        self.locationManager.delegate = self;
    }
    return self;
}

-(void) locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    [self.delegate update:[locations lastObject]];
}

-(void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    [self.delegate locationError:error];
}



@end
