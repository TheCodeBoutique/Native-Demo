//
//  TCBSplashScreen.m
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import "TCBSplashScreen.h"

@implementation TCBSplashScreen

@synthesize splashImage;
@synthesize showsStatusBarOnDismissal;
@synthesize delegate;

- (void)dealloc {
    [splashImage release], splashImage = nil;
    [super dealloc];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    self.splashImage = nil;
}

// START:LoadView
- (void)loadView {
    UIImageView *iv = [[UIImageView alloc] initWithImage:self.splashImage];
    iv.autoresizingMask = UIViewAutoresizingFlexibleWidth | 
    UIViewAutoresizingFlexibleHeight;
    iv.contentMode = UIViewContentModeCenter;
    self.view = iv;
    [iv release];
}
// END:LoadView

// START:SplashImage
- (UIImage *)splashImage {
    if (splashImage == nil) {
        self.splashImage = [UIImage imageNamed:@"Default.png"];
    }
    return splashImage;
}
// END:SplashImage

// START:Hide
- (void)hide {
    if (self.showsStatusBarOnDismissal) {
        UIApplication *app = [UIApplication sharedApplication];
        [app setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    }
    [self dismissModalViewControllerAnimated:YES];
}
// END:Hide

// START:Presentation
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    SEL didAppearSelector = @selector(splashScreenDidAppear:);
    if ([self.delegate respondsToSelector:didAppearSelector]) {
        [self.delegate splashScreenDidAppear:self];
    }
    [self hide];
}
// END:Presentation

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    if ([self.delegate respondsToSelector:@selector(splashScreenWillDisappear:)]) {
        [self.delegate splashScreenWillDisappear:self];
    }
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    if ([self.delegate respondsToSelector:@selector(splashScreenDidDisappear:)]) {
        [self.delegate splashScreenDidDisappear:self];
    }
}


@end
