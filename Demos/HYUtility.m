//
//  HYUtility.m
//  Demos
//
//  Created by 邱海龙 on 2018/11/25.
//  Copyright © 2018 邱海龙. All rights reserved.
//

#import "HYUtility.h"

@implementation HYUtility

/**
 根据最大 最小 中间值 获取 比例
 
 @param max 最大
 @param min 最小
 @param mid 中间
 
 @return 比例
 */
+ (CGFloat)getRatioWithMax:(CGFloat)max min:(CGFloat)min mid:(CGFloat)mid{
    return (mid - min) / (max - min);
}

/**
 根据最大 最小 比例 获取 中间值
 
 @param max   最大
 @param min   最小
 @param ratio 比例
 
 @return 中间值
 */
+ (CGFloat)getMidWithMax:(CGFloat)max min:(CGFloat)min ratio:(CGFloat)ratio{
    return (max - min) * ratio + min;
}
+ (CGRect)getRectWithMaxRect:(CGRect)maxRect minRect:(CGRect)minRect Ratio:(CGFloat)ratio{
    return CGRectMake([HYUtility getMidWithMax:maxRect.origin.x       min:minRect.origin.x    ratio:ratio],
                      [HYUtility getMidWithMax:maxRect.origin.y       min:minRect.origin.y    ratio:ratio],
                      [HYUtility getMidWithMax:maxRect.size.width     min:minRect.size.width  ratio:ratio],
                      [HYUtility getMidWithMax:maxRect.size.height    min:minRect.size.height ratio:ratio]);
}
@end
