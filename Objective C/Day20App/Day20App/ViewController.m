//
//  ViewController.m
//  
//
//  Created by Dan Luong on 5/11/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import "ViewController.h"
#import <Corelocation/CoreLocation.h>

#define IS_OS_8_OR_LATER ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // showing current location on iOS8 requires one of 2 keys in Info.plist also, NSLocationWhenInUseUsageDescription” and “NSLocationAlwaysUsageDescription” (for bg, not used in this app). They are manually added, and are not accessible from XCode 6 GUI
    self.mapView.delegate = self;
    
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationController = [[CoreLocationController alloc] init];
    self.locationController.delegate = self;
    if(IS_OS_8_OR_LATER) {
        [self.locationManager requestWhenInUseAuthorization];
        [self.locationManager requestAlwaysAuthorization];
    }
    

    [self.locationController.locationManager startUpdatingLocation];
    
    [self.locationManager startUpdatingLocation];
    
    self.mapView.showsUserLocation = YES;
    self.mapView.showsPointsOfInterest = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)update:(CLLocation *)location {
    self.lblLatitude.text= [NSString stringWithFormat:@"Latitude: %f", [location coordinate].latitude];
    self.lblLongitude.text = [NSString stringWithFormat:@"Longitude: %f", [location coordinate].longitude];
}

- (void)locationError:(NSError *)error {
    self.lblLatitude.text = [error description];
    self.lblLongitude.text = nil;
}

- (IBAction)tappedAdd:(id)sender {
    CLLocationCoordinate2D mapPoint;
    mapPoint.longitude = -122.132;
    mapPoint.latitude = 47.6243;
    
    MKPointAnnotation *anno = [[MKPointAnnotation alloc]init];
    anno.coordinate = mapPoint;
    anno.title = @"Annotation Title";
    anno.subtitle = @"Subtitle";
    [self.mapView addAnnotation:anno];
}

- (IBAction)tappedRemove:(id)sender {
    for (id annotation in self.mapView.annotations){
        if (![annotation isKindOfClass:[MKUserLocation class]]) {
            [self.mapView removeAnnotation:annotation];
        }
    }
}

- (MKAnnotationView *)mapView:(MKMapView *)map viewForAnnotation:(id <MKAnnotation>)annotation {
    if ([annotation isKindOfClass:[MKUserLocation class]]) {
        return nil;
    }
    static NSString *AnnotationViewID = @"annotationViewID";
    MKPinAnnotationView *annotationView = (MKPinAnnotationView *)[self.mapView dequeueReusableAnnotationViewWithIdentifier:AnnotationViewID];
    if (annotationView == nil) {
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:AnnotationViewID];
    }
    annotationView.canShowCallout = YES;
    annotationView.annotation = annotation;
    return annotationView;
}
@end
