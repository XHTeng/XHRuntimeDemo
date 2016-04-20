//
//  Dog.m
//  XHRuntimeDemo
//
//  Created by craneteng on 16/4/18.
//  Copyright © 2016年 XHTeng. All rights reserved.
//

#import "Dog.h"
#import "NSObject+Extension.h"

@interface Dog()<NSCoding>
@end

@implementation Dog

// 设置需要忽略的属性
- (NSArray *)ignoredNames {
    return @[@"bone"];
}

// 在系统方法内来调用我们的方法
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        [self decode:aDecoder];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [self encode:aCoder];
}
@end
