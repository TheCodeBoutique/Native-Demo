//
//  TitleListViewController.m
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import "TitleListViewController.h"
#import "TCBProjectInfo.h"
#import "TCBWebViewController.h"

@implementation TitleListViewController

@synthesize projects;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [projects release], projects = nil;
    [super dealloc];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.projects = [TCBProjectInfo demoProjectList];
    self.title = @"The Code Boutique";
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.projects count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
    }
    
    TCBProjectInfo *project = [self.projects objectAtIndex:indexPath.row];
    cell.textLabel.text = project.ProjectTitle;
    cell.detailTextLabel.text = [project.authors componentsJoinedByString:@", "];
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TCBProjectInfo *project = [self.projects objectAtIndex:indexPath.row];
    TCBWebViewController *webVC = [[TCBWebViewController alloc] init];
    webVC.backgroundColor = [UIColor grayColor];
    webVC.url = [NSURL URLWithString:project.URLString];
    webVC.title = project.ProjectTitle;
    [self.navigationController pushViewController:webVC animated:YES];
    [webVC release];
}

@end
