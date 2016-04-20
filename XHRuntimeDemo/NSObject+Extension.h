//
//  NSObject+Extension.h
//  XHRuntimeDemo
//
//  Created by craneteng on 16/4/18.
//  Copyright © 2016年 XHTeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Extension)

- (NSArray *)ignoredNames;
- (void)encode:(NSCoder *)aCoder;
- (void)decode:(NSCoder *)aDecoder;

@end
