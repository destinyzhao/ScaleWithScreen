//
//  FitScaleHelper.h
//  ScaleWithScreen
//
//  Created by Destiny on 2021/4/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FitScaleHelper : NSObject

+ (CGFloat)adaptWidthWithValue:(CGFloat)value;

+ (CGFloat)getScaleSize;

+ (UIFont *)adaptFontWithValue:(CGFloat)value;

@end

NS_ASSUME_NONNULL_END
