//
//  FlutterContainerVC.m
//  Runner
//
//  Created by Kipling on 2019/3/27.
//  Copyright © 2019年 The Chromium Authors. All rights reserved.
//

#import "FlutterContainerVC.h"
#import <Flutter/Flutter.h>
#import "BaseServerConfig.h"
#import "NativeAlertView.h"

@interface FlutterContainerVC ()

//弹出框
@property (nonatomic, strong) NativeAlertView *alertView;

@end

@implementation FlutterContainerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any add2itional setup after loading the view.
    self.title = @"flutter view";
    
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithProject:nil nibName:nil bundle:nil];
    [flutterViewController setInitialRoute:@"pages/variable_screen"];
    flutterViewController.view.frame = CGRectMake(0, kNavigationBarHeight, kScreenWidth, kScreenHeight - kNavigationBarHeight);
    [self addChildViewController:flutterViewController];
    [self.view addSubview:flutterViewController.view];
    
    NSString *channelName = @"pages/variable_screen";
    FlutterMethodChannel *messageChannel = [FlutterMethodChannel methodChannelWithName:channelName binaryMessenger:flutterViewController];
    [messageChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        
        if ([call.method isEqualToString:@"popTheAlert"]) {
            [self.alertView showActionPopViewComplete:^(NSString *text) {
                if (result) {
                    result(text);
                }
            }];
        }
    }];
}

- (NativeAlertView *)alertView {
    if (!_alertView) {
        _alertView = [[NSBundle mainBundle] loadNibNamed:@"NativeAlertView" owner:nil options:nil].firstObject;
        _alertView.frame = CGRectMake(0, 0, 300, 180);
    }
    return _alertView;
}


@end
