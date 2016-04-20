//
//  decode.h
//  XHRuntimeDemo
//
//  Created by craneteng on 16/4/18.
//  Copyright © 2016年 XHTeng. All rights reserved.
//

// 一句宏搞定归解档
#import "NSObject+Extension.h"

#define CodingImplementation \
- (instancetype)initWithCoder:(NSCoder *)aDecoder {\
    if (self = [super init]) {\
        [self decode:aDecoder];\
    }\
    return self;\
}\
\
- (void)encodeWithCoder:(NSCoder *)aCoder {\
    [self encode:aCoder];\
}