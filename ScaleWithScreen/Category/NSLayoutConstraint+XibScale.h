//
//  NSLayoutConstraint+XibScale.h
//  ScaleWithScreen
//
//  Created by Destiny on 2021/4/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSLayoutConstraint (XibScale)

@property(nonatomic, assign) IBInspectable BOOL adapterScreen;

@end

NS_ASSUME_NONNULL_END
