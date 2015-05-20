//
//  ViewController.m
//  GoogleAds-Admob
//
//  Created by KaL on 5/20/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "ViewController.h"
#import "GAdBanner.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height


@interface ViewController ()

@end

@implementation ViewController
{
    GAdBanner *googleAdModel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // create Admob Banner
    googleAdModel = [[GAdBanner alloc] init];
    googleAdModel.admobBannerView = [[GADBannerView alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT - 50, SCREEN_WIDTH,50)];
    [self.view addSubview:googleAdModel.admobBannerView];
    
    // load ad into banner View
    googleAdModel.admobBannerView.adUnitID = @"ca-app-pub-3881118705042209/9508939974";
    googleAdModel.admobBannerView.rootViewController = self;
    
    GADRequest *gadRequest = [GADRequest request];
    [googleAdModel.admobBannerView loadRequest:gadRequest];
    
//    gadRequest.testDevices = @[kGADSimulatorID];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
