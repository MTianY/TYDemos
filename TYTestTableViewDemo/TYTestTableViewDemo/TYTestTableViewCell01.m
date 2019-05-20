//
//  TYTestTableViewCell01.m
//  TYTestTableViewDemo
//
//  Created by 马天野 on 2019/5/20.
//  Copyright © 2019 Maty. All rights reserved.
//

#import "TYTestTableViewCell01.h"
#import <Masonry.h>

@interface TYTestTableViewCell01 ()

@property (nonatomic, strong) UIView *topView;
@property (nonatomic, strong) UIView *midView;
@property (nonatomic, strong) UIView *bottomView;

@end

@implementation TYTestTableViewCell01

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}

#pragma mark - UI
- (void)setupUI {
    self.backgroundColor = UIColor.orangeColor;
    
    [self.contentView addSubview:self.topView];
    [self.topView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(10);
        make.top.equalTo(self.contentView).offset(10);
        make.right.equalTo(self.contentView).offset(-10);
        make.height.mas_equalTo(100);
    }];
    
    [self.contentView addSubview:self.midView];
    [self.midView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(10);
        make.top.equalTo(self.topView.mas_bottom).offset(10);
        make.right.equalTo(self.contentView).offset(-10);
        make.height.mas_equalTo(200);
    }];
    
    
    [self.contentView addSubview:self.bottomView];
    [self.bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(10);
        make.top.equalTo(self.midView.mas_bottom).offset(10);
        make.right.equalTo(self.contentView).offset(-10);
        make.height.mas_equalTo(100);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    
}

#pragma mark - Getter
- (UIView *)topView {
    if (nil == _topView) {
        _topView = [[UIView alloc] init];
        _topView.backgroundColor = [UIColor blueColor];
    }
    return _topView;
}

- (UIView *)midView {
    if (nil == _midView) {
        _midView = [[UIView alloc] init];
        _midView.backgroundColor = [UIColor purpleColor];
    }
    return _midView;
}

- (UIView *)bottomView {
    if (nil == _bottomView) {
        _bottomView = [[UIView alloc] init];
        _bottomView.backgroundColor = [UIColor cyanColor];
    }
    return _bottomView;
}

@end
