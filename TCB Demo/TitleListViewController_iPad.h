//
//  TitleListViewController_iPad.h
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TCBWebViewController.h"
#import "TitleListViewController.h"

@interface TitleListViewController_iPad : TitleListViewController <TCBWebViewControllerDelegate> {}

@property (nonatomic, retain) IBOutlet TCBWebViewController *webVC;

@end
