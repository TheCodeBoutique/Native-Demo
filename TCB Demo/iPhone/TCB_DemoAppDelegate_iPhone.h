//
//  TCB_DemoAppDelegate_iPhone.h
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TCBSplashScreen.h"

@interface TCB_DemoAppDelegate_iPhone : NSObject <UIApplicationDelegate, TCBSplashScreenDelegate> {}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navController;
@property (nonatomic, retain) IBOutlet TCBSplashScreen *splashScreen;

@end
