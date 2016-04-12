//
//  model.m
//  slimController
//
//  Created by zhifanYoung on 16/4/12.
//  Copyright © 2016年 zhifanYoung. All rights reserved.
//

#import "model.h"

@implementation model

- (instancetype)initWithDict:(NSDictionary *)dict {

    if (self = [super init]) {
        
        self.title = dict[@"title"];
        self.desc = dict[@"desc"];
    }
    return self;
}

+ (instancetype)modelWithDict:(NSDictionary *)dict {

    return [[self alloc] initWithDict:dict];
}

+ (NSArray *)modelList {

    NSArray *dictArray = @[
                @{@"title": @"jodan", @"desc": @"公牛"},
                @{@"title": @"kobe", @"desc": @"湖人"},
                @{@"title": @"james", @"desc":@"热火"},
                @{@"title": @"yaoming", @"desc":@"火箭"},
                @{@"title": @"kury", @"desc": @"勇士"},
                @{@"title": @"pake", @"desc": @"雷霆"}
                ];
    NSMutableArray *tmpArr = [NSMutableArray array];
    for (NSDictionary *dict in dictArray) {
        model *m = [model modelWithDict:dict];
        [tmpArr addObject:m];
    }
    return tmpArr.copy;
    
}

@end
