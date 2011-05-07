//
//  ProjectDetailViewController.h
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TCBWebViewController.h"

@interface ProjectDetailViewController : TCBWebViewController <UISplitViewControllerDelegate> {}

@property (nonatomic, retain) UIToolbar *toolbar;
@property (nonatomic, retain) UIPopoverController *popoverController;

@end
