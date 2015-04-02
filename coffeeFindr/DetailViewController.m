//
//  DetailViewController.m
//  coffeeFindr
//
//  Created by Grover Light on 4/2/15.
//  Copyright (c) 2015 learning, inc. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.coffeePlace.mapItem.name;
}


@end
