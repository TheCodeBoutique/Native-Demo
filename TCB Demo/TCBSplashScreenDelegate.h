//
//  TCBSplashScreenDelegate.h
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TCBSplashScreen;

// START:Delegate
@protocol TCBSplashScreenDelegate <NSObject>

@optional
- (void)splashScreenDidAppear:(TCBSplashScreen *)splashScreen;
- (void)splashScreenWillDisappear:(TCBSplashScreen *)splashScreen;
- (void)splashScreenDidDisappear:(TCBSplashScreen *)splashScreen;

@end
// END:Delegate
