//
//  TCB_DemoAppDelegate_iPad.h
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TCBSplashScreenDelegate.h"

@interface AppDelegate_iPad : NSObject <UIApplicationDelegate, TCBSplashScreenDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UISplitViewController *splitViewController;
@property (nonatomic, retain) IBOutlet TCBSplashScreen *splashScreen;

@end
