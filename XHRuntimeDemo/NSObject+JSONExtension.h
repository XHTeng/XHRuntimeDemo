//
//  NSObject+JSONExtension.h
//  XHRuntimeDemo
//
//  Created by craneteng on 16/4/19.
//  Copyright © 2016年 XHTeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (JSONExtension)

- (void)setDict:(NSDictionary *)dict;
+ (instancetype )objectWithDict:(NSDictionary *)dict;
// 告诉数组中都是什么类型的模型对象
- (NSString *)arrayObjectClass ;
@end
