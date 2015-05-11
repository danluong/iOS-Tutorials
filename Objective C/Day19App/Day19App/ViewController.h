//
//  ViewController.h
//  Day19App
//
//  Created by Dan Luong on 5/11/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "CoreLocationController.h"

@interface ViewController : UIViewController <CoreLocationControllerDelegate, MKMapViewDelegate,  CLLocationManagerDelegate> {
    
}
@property (weak, nonatomic) IBOutlet UILabel *lblLongitude;
@property (weak, nonatomic) IBOutlet UILabel *lblLatitude;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;


@property (nonatomic, retain) CLLocationManager *locationManager;
@property (nonatomic, retain) CoreLocationController *locationController;
@end

