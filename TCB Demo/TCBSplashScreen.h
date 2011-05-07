//
//  TCBSplashScreen.h
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TCBSplashScreenDelegate.h"

// START:Interface
@interface TCBSplashScreen : UIViewController {}

@property (nonatomic, retain) UIImage *splashImage;
@property (nonatomic, assign) BOOL showsStatusBarOnDismissal;
@property (nonatomic, assign) IBOutlet id<TCBSplashScreenDelegate> delegate;

- (void)hide;

@end
// END:Interface