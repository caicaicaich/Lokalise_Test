//
//  AppDelegate.m
//  Lokalise_Test
//
//  Created by iOS_1 on 2022/1/7.
//

#import "AppDelegate.h"
#import <Lokalise/Lokalise.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[Lokalise sharedObject] setProjectID:@"4061367161d7dceee65259.17924896" token:@"0f4d9145d3c5546596828e9edc054ad575c7cb5f"];
    [[Lokalise sharedObject] swizzleMainBundle];
    NSLog(NSLocalizedString(@"New_GoingBtn_Nomal", nil));
    return YES;
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    [[Lokalise sharedObject] checkForUpdatesWithCompletion:^(BOOL updated, NSError * _Nullable error) {
            NSLog(@"Updated %d\nError: %@", updated, error);
        }];
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
