//
//  TYTestTableViewCell02.m
//  TYTestTableViewDemo
//
//  Created by 马天野 on 2019/5/20.
//  Copyright © 2019 Maty. All rights reserved.
//

#import "TYTestTableViewCell02.h"

@interface TYTestTableViewCell02 ()

@end

@implementation TYTestTableViewCell02

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}

#pragma mark - UI
- (void)setupUI {
    self.backgroundColor = UIColor.greenColor;
}

@end
