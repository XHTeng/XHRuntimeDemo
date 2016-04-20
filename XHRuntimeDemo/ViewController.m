//
//  ViewController.m
//  XHXHRuntimeDemo
//
//  Created by craneteng on 16/4/18.
//  Copyright © 2016年 XHTeng. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "User.h"
#import "NSObject+JSONExtension.h"
#import "Book.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self json];
}

/// 字典转模型demo
- (void)json {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"model.json" ofType:nil];
    NSData *jsonData = [NSData dataWithContentsOfFile:path];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:NULL];
    
    User *user = [User objectWithDict:json];
    Book *book = user.books[0];
    
    NSLog(@"%@",book.name);
}

/// 归解档demo
- (void)archiver {
    NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"temp.plist"];

//    Person *person = [[Person alloc] init];
    
    // 归档
//    person.name = @"人人";
//    [NSKeyedArchiver archiveRootObject:person toFile:path];
    
    // 解档
    Person *person = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSLog(@"%@",person.name);
    
    NSLog(@"%@",path);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
