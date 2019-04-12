//
//  UIColor+WUtils.h
//  WUtils
//
//  Created by winter on 2019/4/11.
//  Copyright © 2019 winter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (WUtils)

/**
 十六进制颜色值生成颜色
 
 @param hexColor 十六进制字符串  6位 || 7位（#开头）
 @return color
 */
+(UIColor *)colorWithHexColor:(NSString *)hexColor;

/**
 生成随机颜色
 
 @return color
 */
+(UIColor *)randomColor;

/// rgb色值生成颜色
+(UIColor *)colorWithR:(CGFloat)red G:(CGFloat)green B:(CGFloat)blue;

/// rgba色值生成颜色
+(UIColor *)colorWithR:(CGFloat)red G:(CGFloat)green B:(CGFloat)blue A:(CGFloat)alpha;

/// rgb相同色值生成颜色
+(UIColor *)colorWithRGBValue:(CGFloat)value;

/// rgb相同色值生成颜色
+(UIColor *)colorWithRGBValue:(CGFloat)value alpha:(CGFloat)alpha;

@end
