//
//  UITableView+Extension.h
//  TYTestTableViewDemo
//
//  Created by 马天野 on 2019/5/20.
//  Copyright © 2019 Maty. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (Extension)

- (void)registCell;
- (__kindof UITableViewCell *)ty_dequeueReusableCellWithIndexPath:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
