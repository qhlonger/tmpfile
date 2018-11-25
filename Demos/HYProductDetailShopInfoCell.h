//
//  HYProductDetailShopInfoCell.h
//  Demos
//
//  Created by 邱海龙 on 2018/11/25.
//  Copyright © 2018 邱海龙. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HYProductDetailShopInfoCell : UITableViewCell

@property(nonatomic, weak) UIImageView *iconView;

@property(nonatomic, weak) UILabel *titleLabel;
@property(nonatomic, weak) UILabel *descLabel;

@property(nonatomic, weak) UILabel *followLabel;
@property(nonatomic, weak) UILabel *followCountLabel;

@property(nonatomic, weak) UILabel *collectionLabel;
@property(nonatomic, weak) UILabel *collectionCountLabel;

@property(nonatomic, weak) UILabel *scoreLabel;
@property(nonatomic, weak) UILabel *scoreCountLabel;


@end

NS_ASSUME_NONNULL_END
