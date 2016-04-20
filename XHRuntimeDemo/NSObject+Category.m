//
//  NSObject+Category.m
//  XHRuntimeDemo
//
//  Created by craneteng on 16/4/18.
//  Copyright © 2016年 XHTeng. All rights reserved.
//

#import "NSObject+Category.h"
#import <objc/runtime.h>

@implementation NSObject (Category)

char nameKey;

- (void)setName:(NSString *)name {
    // 将某个值跟某个对象关联起来，将某个值存储到某个对象中
    objc_setAssociatedObject(self, &nameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)name {
    return objc_getAssociatedObject(self, &nameKey);
}


@end
