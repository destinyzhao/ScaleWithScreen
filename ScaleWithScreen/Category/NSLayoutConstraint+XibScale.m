//
//  NSLayoutConstraint+XibScale.m
//  ScaleWithScreen
//
//  Created by Destiny on 2021/4/14.
//

#import "NSLayoutConstraint+XibScale.h"
#import <objc/runtime.h>
#import "FitScaleHelper.h"
#import "Macro.h"

//定义常量
static char *AdapterScreenKey = "AdapterScreenKey";

@implementation NSLayoutConstraint (XibScale)

- (BOOL)adapterScreen{
    NSNumber *number = objc_getAssociatedObject(self, AdapterScreenKey);
    return number.boolValue;
}

- (void)setAdapterScreen:(BOOL)adapterScreen {
    
    NSNumber *number = @(adapterScreen);
    objc_setAssociatedObject(self, AdapterScreenKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    if (adapterScreen){
        self.constant = AdaptW(self.constant);
    }
}

@end
