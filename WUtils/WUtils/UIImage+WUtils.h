//
//  UIImage+WUtils.h
//  WUtils
//
//  Created by winter on 2019/4/11.
//  Copyright © 2019 winter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (WUtils)

#pragma mark ------- 颜色生成图片 -------

/**
 创建制定颜色 大小 1x1 的图片
 
 @param color 图片颜色
 @return 图片
 */
+(UIImage *)imageWithColor:(UIColor *)color;

/**
 创建指定颜色 指定大小 的图片
 
 @param color 图片颜色
 @param imageSize 图片大小
 @return 图片
 */
+(UIImage *)imageWithColor:(UIColor *)color imageSize:(CGSize)imageSize;


#pragma mark ------- 图片效果 -------

/**
 图片马赛克效果

 @return 马赛克后的图片
 */
-(UIImage *)pixellate;

/**
 图片高斯模糊效果

 @param blur 模糊等级 越大越模糊  eg 50
 @return 模糊后的图片
 */
-(UIImage *)blurryWithBlurLevel:(CGFloat)blur;


#pragma mark ------- 图片画压缩 -------

/**
 压缩图片到指定尺寸

 @param newSize 新的尺寸
 @return 压缩后的图片
 */
-(UIImage *)compressionToSize:(CGSize)newSize;

/**
 压缩图片到指定大小
 
 @param maxLength 最大大小
 @return 压缩后的图片
 */
-(NSData *)compressionToMaxLength:(NSInteger)maxLength;


#pragma mark ------- base64 转化 -------

/**
 图片转化为base64字符串

 @return base64字符串
 */
-(NSString *)base64String;

/**
 base64 转化为图片

 @param string base64字符串
 @return 图片
 */
-(UIImage *)imageWithBase64String:(NSString *)string;


@end

