//
//  FitScaleHelper.m
//  ScaleWithScreen
//
//  Created by Destiny on 2021/4/14.
//

#import "FitScaleHelper.h"
#import "Macro.h"

@implementation FitScaleHelper

+ (CGFloat)adaptWidthWithValue:(CGFloat)value
{
    return value * [[UIScreen mainScreen] bounds].size.width/kDesignWidth;
}

+ (CGFloat)getScaleSize
{
    CGFloat scaleSize = [UIScreen mainScreen].bounds.size.width/kDesignWidth;
    return scaleSize;
}

+ (UIFont *)adaptFontWithValue:(CGFloat)value
{
    UIFont *fitFont = [UIFont systemFontOfSize:value * [self getScaleSize]];
    return fitFont;
}


@end
