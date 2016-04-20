//
//  Book.h
//  XHRuntimeDemo
//
//  Created by craneteng on 16/4/19.
//  Copyright © 2016年 XHTeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Book : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) double price;
@property (nonatomic,copy) NSString *publisher;

@end
