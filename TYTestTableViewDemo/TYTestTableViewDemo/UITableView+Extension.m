//
//  UITableView+Extension.m
//  TYTestTableViewDemo
//
//  Created by 马天野 on 2019/5/20.
//  Copyright © 2019 Maty. All rights reserved.
//

#import "UITableView+Extension.h"
#import "TYTableViewProtocol.h"
#import <objc/runtime.h>

static NSString * const cellID_01 = @"TYTestTableViewCell01";
static NSString * const cellID_02 = @"TYTestTableViewCell02";
static NSString * const cellID_03 = @"TYTestTableViewCell03";
static NSString * const cellID_04 = @"TYTestTableViewCell04";

@implementation UITableView (Extension)

- (void)setCellIDsArray:(NSArray *)cellIDsArray {
    objc_setAssociatedObject(self, @selector(cellIDsArray), cellIDsArray, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSArray *)cellIDsArray {
    return objc_getAssociatedObject(self, @selector(cellIDsArray));
}

- (void)registCell {
    
    self.cellIDsArray = @[
                          cellID_01,
                          cellID_02,
                          cellID_03,
                          cellID_04
                          ];
    
    
    for (NSString *cellID in self.cellIDsArray) {
        [self registerClass:NSClassFromString(cellID) forCellReuseIdentifier:cellID];
    }
    
}

- (UITableViewCell *)ty_dequeueReusableCellWithIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell<TYTableViewProtocol> *cell = [self dequeueReusableCellWithIdentifier:self.cellIDsArray[indexPath.row] forIndexPath:indexPath];
    return cell;
}

@end
