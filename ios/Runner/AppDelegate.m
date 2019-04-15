#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"

#import "PocRootViewController.h"
#import <AMapFoundationKit/AMapFoundationKit.h>
#define kAMapKit_APPKEY @"f4229f07c1407159db8ae14adb2282f3"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
    
    /**  高德地图 */
    [self initAMapKit];
    self.window.rootViewController = [self initialRootViewController];
//    
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (UIViewController *)initialRootViewController {

    PocRootViewController *tabBarVC = [[PocRootViewController alloc] init];
    return tabBarVC;
}

/** 初始化高德地图 APi */
-(void)initAMapKit{
    if ([kAMapKit_APPKEY length] == 0){
        return;
    }
    [AMapServices sharedServices].apiKey = kAMapKit_APPKEY;
}

@end
