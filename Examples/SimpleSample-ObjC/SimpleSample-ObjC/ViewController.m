//
//  ViewController.m
//  SimpleSample-ObjC
//
//  Created by Jonathan Sahoo on 6/12/16.
//  Copyright © 2016 trnql. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [Trnql setApiKey:@"ENTER_API_KEY_HERE"]; // Required
    [Trnql setUserTokenForPeople:@"Unique-User-ID"];  // Required for nearby people to be included in contextual snapshots
    [Trnql setProductNameForPeople:@"SimpleSample-ObjC"]; // Required for nearby people to be included in contextual snapshots
    [Trnql setSearchRadiusForPeople:8000]; // Optional
    [Trnql setSearchRadiusForPlaces:5000]; // Optional
    [Trnql setContactEmail:@"xxx@xxx.com"]; // Optional
    
    // [Trnql setCollectAnalyticsInBackground:true]; // Use IFF analytics should be collected in the background. Requires "Always" location authorization
    
    [Trnql addDelegate:self];
    [Trnql start];
}

- (void)trnqlDidEncounterError:(NSError *)error {
    NSLog(@"%@", error);
}

- (void) trnqlOperationDidComplete:(NSString *)message {
    NSLog(@"%@", message);
}

- (IBAction)requestLocationAuthorization:(UIButton *)sender {
    [Trnql requestWhenInUseLocationAuthorization];
}

- (IBAction)requestActivityPermission:(UIButton *)sender {
    [Trnql requestActivityPermission];
}

- (IBAction)takeContextualSnapshot:(UIButton *)sender {
    [Trnql takeContextSnapshotForEventNamed:@"Foo"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
