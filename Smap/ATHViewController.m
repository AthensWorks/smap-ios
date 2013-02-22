//
//  ATHViewController.m
//  Smap
//
//  Created by Daniel Shusta on 2/21/13.
//  Copyright (c) 2013 Athensworks. All rights reserved.
//

#import <MapKit/MapKit.h>
#import "ATHViewController.h"

@interface ATHViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UIView *gradientView;

@end

@implementation ATHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.mapView.userTrackingMode = MKUserTrackingModeFollow;
	
	self.gradientView.backgroundColor = [UIColor clearColor];
	CAGradientLayer *gradient = [[CAGradientLayer alloc] init];
	gradient.frame = self.gradientView.bounds;
	gradient.colors = @[(id)[UIColor colorWithWhite:0.3 alpha:1.0f].CGColor,
					 (id)[UIColor colorWithWhite:0.3 alpha:1.0f].CGColor,
					 (id)[UIColor colorWithWhite:0.3 alpha:0.0f].CGColor];
	gradient.locations = @[@0, @0.8, @1];
	[self.gradientView.layer addSublayer:gradient];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
