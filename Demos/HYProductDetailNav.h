//
//  HYProductDetailNav.h
//  Demos
//
//  Created by 邱海龙 on 2018/11/23.
//  Copyright © 2018 邱海龙. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HYProductDetailNav : UIView

@property(nonatomic, weak) UIButton *backBtn;
@property(nonatomic, weak) UIButton *shareBtn;
@property(nonatomic, weak) UIButton *shopCartBtn;


@property(nonatomic, assign) CGFloat ratio;
@end

NS_ASSUME_NONNULL_END
