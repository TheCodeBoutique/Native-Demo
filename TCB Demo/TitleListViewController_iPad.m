//
//  TitleListViewController_iPad.m
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import "TitleListViewController_iPad.h"

#import "TCBProjectInfo.h"
#import "TCBWebViewController.h"

@implementation TitleListViewController_iPad

@synthesize webVC;

- (void)dealloc {
    [webVC release], webVC = nil;
    [super dealloc];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    self.webVC = nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webVC.backgroundColor = [UIColor grayColor];
    self.contentSizeForViewInPopover = CGSizeMake(320.0, 480.0);
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    TCBProjectInfo *project = [self.projects objectAtIndex:indexPath.row];
    self.webVC.url = [NSURL URLWithString:project.URLString];
    self.webVC.title = project.ProjectTitle;
    [self.webVC reload];
}
@end
