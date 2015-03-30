//
//  ListViewController.m
//  coffeeFindr
//
//  Created by Grover Light on 3/30/15.
//  Copyright (c) 2015 learning, inc. All rights reserved.
//

#import "ListViewController.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface ListViewController () <CLLocationManagerDelegate>


@property CLLocationManager *locationManager;
@property CLLocation *currentLocation;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.locationManager = [CLLocationManager new];
    self.locationManager.delegate = self;
    [self updateCurrentLocation];
}


-(void)updateCurrentLocation

{
    [self.locationManager requestAlwaysAuthorization];
    [self.locationManager startUpdatingLocation];
}


-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations

{
    self.currentLocation = locations.firstObject;
    NSLog(@"%@", self.currentLocation);
    [self.locationManager stopUpdatingLocation];



}




@end
