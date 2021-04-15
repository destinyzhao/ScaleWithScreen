//
//  Macro.h
//  ScaleWithScreen
//
//  Created by Destiny on 2021/4/14.
//

#ifndef Macro_h
#define Macro_h

// 基准屏幕宽度(iphone 6)
#define kDesignWidth 375.0
// 以屏幕宽度为固定比例关系，来计算对应的值。
#define AdaptW(floatValue) [FitScaleHelper adaptWidthWithValue:floatValue]
// 适配字体
#define AdaptFont(floatValue) [FitScaleHelper adaptFontWithValue:floatValue]


#endif /* Macro_h */
