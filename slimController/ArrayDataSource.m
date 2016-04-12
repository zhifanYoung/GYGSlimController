//
//  ArrayDataSource.m
//  slimController
//
//  Created by zhifanYoung on 16/4/12.
//  Copyright © 2016年 zhifanYoung. All rights reserved.
//

#import "ArrayDataSource.h"

@interface ArrayDataSource ()

@property(strong, nonatomic) NSArray *itmes;

@property(strong, nonatomic) NSString *cellIdentifier;

@property(copy, nonatomic) TableViewCellConfigureBlock configureBlock;

@end

@implementation ArrayDataSource

- (instancetype)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureBlock {

    if (self = [super init]) {
     
        self.itmes = anItems;
        self.cellIdentifier = aCellIdentifier;
        self.configureBlock = aConfigureBlock;
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.itmes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    id item = self.itmes[indexPath.row];
    self.configureBlock(cell, item);
    
    return cell;
}

@end
