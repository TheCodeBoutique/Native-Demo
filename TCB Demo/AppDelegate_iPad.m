//
//  AppDelegate_iPad.m
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import "AppDelegate_iPad.h"
#import "TCBSplashScreen_iPad.h"

@implementation AppDelegate_iPad

@synthesize window;
@synthesize splitViewController;
@synthesize splashScreen;

#pragma mark -
#pragma mark Application lifecycle

// START:iPadLaunch
- (BOOL)application:(UIApplication *)application 
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    [self.window addSubview:self.splitViewController.view];
    
    UIImage *splash = [UIImage imageNamed:@"splash_background_ipad.png"];
    self.splashScreen.splashImage = splash;
    
    self.splashScreen.showsStatusBarOnDismissal = YES;
    self.splashScreen.modalTransitionStyle =
    UIModalTransitionStyleCrossDissolve;
    [self.splitViewController presentModalViewController:splashScreen 
                                                animated:NO];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}
// END:iPadLaunch

// START:iPadDismiss
- (void)splashScreenDidDisappear:(TCBSplashScreen *)splashScreen {
    self.splashScreen = nil;
}
// END:iPadDismiss

- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [splitViewController release], splitViewController = nil;
    [window release], window = nil;
    [splashScreen release], splashScreen = nil;
    [super dealloc];
}


@end
