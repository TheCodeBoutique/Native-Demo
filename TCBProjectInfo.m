//
//  TCBProjectInfo.m
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import "TCBProjectInfo.h"


@implementation TCBProjectInfo

@synthesize ProjectTitle;
@synthesize authors;
@synthesize URLString;

- (void)dealloc {
    [ProjectTitle release], ProjectTitle = nil;
    [authors release], authors = nil;
    [URLString release], URLString = nil;
    
    [super dealloc];
}

+ (id)infoWithTitle:(NSString *)inTitle authors:(NSArray *)inAuthors URLString:(NSString *)inURLString {
    return [[[self alloc] initWithTitle:inTitle authors:inAuthors URLString:inURLString] autorelease];
}

- (id)initWithTitle:(NSString *)inTitle authors:(NSArray *)inAuthors URLString:(NSString *)inURLString {
    if ((self = [super init])) {
        [self setProjectTitle:inTitle];
        [self setAuthors:inAuthors];
        [self setURLString:inURLString];
    }
    return self;
}

+ (NSArray *)demoProjectList {
    return [NSArray arrayWithObjects:
            [TCBProjectInfo infoWithTitle:@"iOS Recipes" authors:[NSArray arrayWithObjects:@"Drance", @"Warren", nil] URLString:@"http://www.pragprog.com/titles/cdirec/ios-recipes"],
            [TCBProjectInfo infoWithTitle:@"iPad Programming" authors:[NSArray arrayWithObjects:@"Steinberg", @"Freeman", nil] URLString:@"http://www.pragprog.com/titles/sfipad/ipad-programming"],
            [TCBProjectInfo infoWithTitle:@"iPhone SDK Development" authors:[NSArray arrayWithObjects:@"Dudney", @"Adamson", nil] URLString:@"http://www.pragprog.com/titles/amiphd/iphone-sdk-development"],
            [TCBProjectInfo infoWithTitle:@"Cocoa Programming" authors:[NSArray arrayWithObjects:@"Steinberg", nil] URLString:@"http://www.pragprog.com/titles/dscpq/cocoa-programming"],
            [TCBProjectInfo infoWithTitle:@"Core Animation" authors:[NSArray arrayWithObjects:@"Dudney", nil] URLString:@"http://www.pragprog.com/titles/bdcora/core-animation-for-mac-os-x-and-the-iphone"],
            [TCBProjectInfo infoWithTitle:@"Core Data" authors:[NSArray arrayWithObjects:@"Zarra", nil] URLString:@"http://www.pragprog.com/titles/mzcd/core-data"],
            [TCBProjectInfo infoWithTitle:@"Beginning Mac Programming" authors:[NSArray arrayWithObjects:@"Isted", nil] URLString:@"http://www.pragprog.com/titles/tibmac/beginning-mac-programming"],
            [TCBProjectInfo infoWithTitle:@"TextMate" authors:[NSArray arrayWithObjects:@"Gray", nil] URLString:@"http://www.pragprog.com/titles/textmate/textmate"],
            [TCBProjectInfo infoWithTitle:@"Programming Cocoa With Ruby" authors:[NSArray arrayWithObjects:@"Marick", nil] URLString:@"http://www.pragprog.com/titles/bmrc/programming-cocoa-with-ruby"],
            nil];
}

@end
