//
//  HYProductDetailInfoCell.h
//  Demos
//
//  Created by 邱海龙 on 2018/11/25.
//  Copyright © 2018 邱海龙. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HYProductDetailInfoCell : UITableViewCell
@property(nonatomic, weak) UILabel *titleLabel;
@property(nonatomic, weak) UILabel *descLabel;
@property(nonatomic, weak) UILabel *priceLabel;
@property(nonatomic, weak) UILabel *oldPriceLabel;
@property(nonatomic, weak) UILabel *expressLabel;
@property(nonatomic, weak) UILabel *soldCountLabel;
@property(nonatomic, weak) UILabel *locationLabel;


@end

NS_ASSUME_NONNULL_END
