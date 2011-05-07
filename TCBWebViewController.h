//
//  TCBWebViewController.h
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TCBWebViewControllerDelegate.h"

@interface TCBWebViewController : UIViewController <UIWebViewDelegate> {}

@property (nonatomic, retain) NSURL *url;

@property (nonatomic, retain) UIColor *backgroundColor;
@property (nonatomic, retain) UIWebView *webView;
@property (nonatomic, retain) UIActivityIndicatorView *activityIndicator;

@property (nonatomic, assign) BOOL showsDoneButton;

@property (nonatomic, assign) id <TCBWebViewControllerDelegate> delegate;

- (void)reload;

@end
