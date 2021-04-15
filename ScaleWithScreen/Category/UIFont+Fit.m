//
//  UIFont+Fit.m
//  ScaleWithScreen
//
//  Created by Destiny on 2021/4/15.
//

#import "UIFont+Fit.h"
#import <objc/runtime.h>
#import "FitScaleHelper.h"

@implementation UIFont (Fit)

+ (void)load {
    
    Method selfMethod = class_getClassMethod([self class], @selector(runtimeFitFont:));
    Method systenMethod = class_getClassMethod([self class], @selector(systemFontOfSize:));
    method_exchangeImplementations(selfMethod, systenMethod);
}

+ (UIFont *)runtimeFitFont:(CGFloat)fontSize {
    UIFont *fitFont = [UIFont runtimeFitFont:fontSize * [FitScaleHelper getScaleSize]];
    return fitFont;
}

@end
