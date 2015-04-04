//
//  DetailViewController.h
//  coffeeFindr
//
//  Created by Grover Light on 4/2/15.
//  Copyright (c) 2015 learning, inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoffeePlace.h"

@interface DetailViewController : UIViewController

@property CoffeePlace *coffeePlace;
@property CLLocation *currentLocation;



@end
