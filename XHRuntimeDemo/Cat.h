//
//  Cat.h
//  XHRuntimeDemo
//
//  Created by craneteng on 16/4/19.
//  Copyright © 2016年 XHTeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fish.h"

@interface Cat : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) double price;
// 属性是一个对象
@property (nonatomic,strong) Fish *fish;

@end
