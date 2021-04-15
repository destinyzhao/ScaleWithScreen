//
//  UILabel+XibScale.m
//  ScaleWithScreen
//
//  Created by Destiny on 2021/4/14.
//

#import "UILabel+XibScale.h"
#import <objc/runtime.h>
#import "FitScaleHelper.h"

@implementation UILabel (XibScale)

+ (void)load {
    Method swizeeMethod = class_getInstanceMethod([UILabel class], @selector(d_awakeFromNib));
    Method originalMethod = class_getInstanceMethod([UILabel class], @selector(awakeFromNib));
    
    if (!class_addMethod([UILabel class], @selector(awakeFromNib), method_getImplementation(swizeeMethod), method_getTypeEncoding(swizeeMethod))) {
        
        method_exchangeImplementations(originalMethod,swizeeMethod);
    } else {
        class_replaceMethod(self, @selector(d_awakeFromNib), method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    }
}

- (void)d_awakeFromNib {
  
    self.font = [UIFont fontWithDescriptor:self.font.fontDescriptor size:self.font.pointSize * [FitScaleHelper getScaleSize]];
    
    [self d_awakeFromNib];
}

@end
