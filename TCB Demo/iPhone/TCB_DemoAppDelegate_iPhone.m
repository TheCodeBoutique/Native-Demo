//
//  TCB_DemoAppDelegate_iPhone.m
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import "TCB_DemoAppDelegate_iPhone.h"
#import "TCBSplashScreen.h"

@implementation TCB_DemoAppDelegate_iPhone

@synthesize window;
@synthesize navController;
@synthesize splashScreen;

#pragma mark -
#pragma mark Application lifecycle

// Start:ShowSplashScreen
- (BOOL)application:(UIApplication *)application 
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self.window addSubview:self.navController.view];
        
    self.splashScreen.showsStatusBarOnDismissal = YES;
    self.splashScreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self.navController presentModalViewController:splashScreen
                                          animated:NO];
    [self.window makeKeyAndVisible];
    
    return YES;
        
}
// End:ShowSplashScreen

- (void)splashScreenDidAppear: (TCBSplashScreen *)splashScreen {
    NSLog(@"splashScreenDidAppear!");
}

- (void)splashScreenWillDisappear:(TCBSplashScreen *)splashScreen {
    NSLog(@"splashScreenWillDisappear!");
}

// Start:SplashScreenEnd
- (void)splashScreenWillDissappear:(TCBSplashScreen *)splashScreen {
    self.splashScreen = nil;
}
// END:SplashScreenEnd

- (void)dealloc {
    [window release], window = nil;
    [navController release], navController = nil;
    [splashScreen release], splashScreen= nil;
	[super dealloc];
}

@end
