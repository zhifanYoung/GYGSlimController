//
//  ViewController.m
//  slimController
//
//  Created by zhifanYoung on 16/4/12.
//  Copyright © 2016年 zhifanYoung. All rights reserved.
//

#import "ViewController.h"
#import "ArrayDataSource.h"
#import "model.h"
#import "TestCell.h"

@interface ViewController () <UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *mainTable;

@property(strong, nonatomic) ArrayDataSource *dataSource;

@property(strong, nonatomic) NSArray *modelArr;

@end

static NSString *const CellId = @"CellId";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupTableView];
}

- (void)setupTableView {
    
    TableViewCellConfigureBlock configureBlock = ^(TestCell *cell, model *item) {
        [cell configureWithModel:item];
    };
    self.dataSource = [[ArrayDataSource alloc] initWithItems:self.modelArr cellIdentifier:CellId configureCellBlock:configureBlock];
    self.mainTable.dataSource = self.dataSource;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    NSLog(@"-- Young -- %s", __func__);
}

- (NSArray *)modelArr {

    if (!_modelArr) {
        _modelArr = [model modelList];
    }
    return _modelArr;
}
@end
