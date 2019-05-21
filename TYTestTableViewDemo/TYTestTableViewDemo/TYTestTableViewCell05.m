//
//  TYTestTableViewCell05.m
//  TYTestTableViewDemo
//
//  Created by 马天野 on 2019/5/21.
//  Copyright © 2019 Maty. All rights reserved.
//

#import "TYTestTableViewCell05.h"

@interface TYTestTableViewCell05 ()

@property (nonatomic, strong) UIView *containerView;

@end

@implementation TYTestTableViewCell05

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}

#pragma mark - UI
- (void)setupUI {
    [self.contentView addSubview:self.containerView];
    [self.containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(10, 10, 10, 10));
    }];
    
    UIView *test1 = [[UIView alloc] init];
    test1.backgroundColor = UIColor.redColor;
    [self.containerView addSubview:test1];
    [test1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.containerView).offset(10);
        make.left.equalTo(self.containerView).offset(10);
        make.right.equalTo(self.containerView).offset(-10);
        make.height.mas_equalTo(150);
        make.bottom.equalTo(self.containerView).offset(-10);
    }];
    
}

#pragma mark - Getter
- (UIView *)containerView {
    if (nil == _containerView) {
        _containerView = [[UIView alloc] init];
        _containerView.backgroundColor = UIColor.orangeColor;
    }
    return _containerView;
}

@end
