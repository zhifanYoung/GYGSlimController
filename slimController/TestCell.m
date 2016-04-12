//
//  TestCell.m
//  slimController
//
//  Created by zhifanYoung on 16/4/12.
//  Copyright © 2016年 zhifanYoung. All rights reserved.
//

#import "TestCell.h"

@interface TestCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *descLabel;

@end

@implementation TestCell

- (void)configureWithModel:(model *)m {

    self.titleLabel.text = m.title;
    self.descLabel.text = m.desc;
}


@end
