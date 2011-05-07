//
//  TCBProjectInfo.h
//  TCB Demo
//
//  Created by Chad Eubanks on 5/6/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface TCBProjectInfo : NSObject {}

@property (nonatomic, copy) NSString *ProjectTitle;
@property (nonatomic, copy) NSArray *authors;
@property (nonatomic, copy) NSString *URLString;

+ (id)infoWithTitle:(NSString *)title authors:(NSArray *)authors URLString:(NSString *)URLString;
+ (NSArray *)demoProjectList;

- (id)initWithTitle:(NSString *)inTitle authors:(NSArray *)inAuthors URLString:(NSString *)inURLString;

@end
