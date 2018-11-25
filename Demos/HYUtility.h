//
//  HYUtility.h
//  Demos
//
//  Created by 邱海龙 on 2018/11/25.
//  Copyright © 2018 邱海龙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HYUtility : NSObject

/**
 根据最大 最小 中间值 获取 比例
 @param max 最大
 @param min 最小
 @param mid 中间
 @return 比例
 */
+ (CGFloat)getRatioWithMax:(CGFloat)max min:(CGFloat)min mid:(CGFloat)mid;

/**
 根据最大 最小 比例 获取 中间值
 @param max   最大
 @param min   最小
 @param ratio 比例
 @return 中间值
 */
+ (CGFloat)getMidWithMax:(CGFloat)max min:(CGFloat)min ratio:(CGFloat)ratio;

+ (CGRect)getRectWithMaxRect:(CGRect)maxRect minRect:(CGRect)minRect Ratio:(CGFloat)ratio;
@end

NS_ASSUME_NONNULL_END
