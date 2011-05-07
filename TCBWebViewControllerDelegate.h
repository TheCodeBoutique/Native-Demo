//
//  TCBWebViewControllerDelegate.h
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import <Foundation/Foundation.h>

// START:TCBWebViewControllerDelegate
@class TCBWebViewController;

@protocol TCBWebViewControllerDelegate <NSObject>

@optional
- (void)webControllerDidFinishLoading:(TCBWebViewController *)controller;

- (void)webController:(TCBWebViewController *)controller 
 didFailLoadWithError:(NSError *)error;

- (BOOL)webController:(TCBWebViewController *)controller
shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)orientation;
@end
// END:TCBWebViewControllerDelegate