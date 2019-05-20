//
//  UITableView+Extension.m
//  TYTestTableViewDemo
//
//  Created by 马天野 on 2019/5/20.
//  Copyright © 2019 Maty. All rights reserved.
//

#import "UITableView+Extension.h"
#import "TYTableViewProtocol.h"

static NSString * const cellID_01 = @"TYTestTableViewCell01";
static NSString * const cellID_02 = @"TYTestTableViewCell02";

@implementation UITableView (Extension)

- (NSArray *)cellIDArray {
    return @[
             cellID_01,
             cellID_02
             ];
}

- (void)registCell {
    [self registerClass:NSClassFromString(cellID_01) forCellReuseIdentifier:cellID_01];
    [self registerClass:NSClassFromString(cellID_02) forCellReuseIdentifier:cellID_02];
}

- (UITableViewCell *)ty_dequeueReusableCellWithIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell<TYTableViewProtocol> *cell = [self dequeueReusableCellWithIdentifier:[self cellIDArray][indexPath.row] forIndexPath:indexPath];
    return cell;
}

@end
