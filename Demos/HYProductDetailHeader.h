//
//  HYProductDetailHeader.h
//  Demos
//
//  Created by 邱海龙 on 2018/11/23.
//  Copyright © 2018 邱海龙. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface HYProductDetailHeaderImageCell : UICollectionViewCell
@property(nonatomic, weak) UIImageView *iconView;
@end





@interface HYProductDetailHeaderBottomView : UIView

@property(nonatomic, weak) UILabel *pricelLabel;
@property(nonatomic, weak) UILabel *oldPriceLabel;
@property(nonatomic, weak) UILabel *soldCountLabel;
@property(nonatomic, weak) UIView *timerView;
@property(nonatomic, weak) UILabel *timerLabel;

@end






@interface HYProductDetailHeader : UIView
@property(nonatomic, weak) UICollectionView *collectionView;



@property(nonatomic, assign) CGFloat ratio;
@end

NS_ASSUME_NONNULL_END
