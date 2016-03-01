//
//  UIImageFactory.h
//  UIImageDemo
//
//  Created by 新闻 on 16/3/1.
//  Copyright © 2016年 新闻. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UIImageFactory : NSObject

/*
 通过颜色生成纯色图片
 */
+(UIImage *)imageWithColor:(UIColor *)color
                  withSize:(CGSize)size;

/*
 生成圆形图片
 */
+(UIImage *)circualImage:(UIImage *)image
            withDiameter:(NSUInteger)diameter;


/*
 通过图片或颜色生成圆形图片(如传入颜色则通过颜色生成)
 */
+(UIImage *)circualarImage:(UIImage *)image
              withDiameter:(NSUInteger)diameter
          highlightedColor:(UIColor *)highlightedColor;


/*
 在已有图片上添加文字
 */
+(UIImage *)addTextInImage:(UIImage *)image
                     text:(NSString *)text
                textColor:(UIColor *)textColor
                     font:(UIFont *)font;

/*
 通过颜色生成图片并添加文字
 */
+(UIImage *)imageWithText:(NSString *)text
          backgroundColor:(UIColor *)backgroundColor
                textColor:(UIColor *)textColor
                     font:(UIFont *)font
                     size:(CGSize )size;

/*
 图片叠加
 */
+(void)maskView:(UIImageView *)imageView
      withImage:(UIImage *)image;

/*
 水平旋转图片
 */
+(UIImage *)horizontallyFlippedImageFromImage:(UIImage *)image;

/*
 修改图片颜色
 */
+ (UIImage *)imageColorChanged:(UIImage *)image
                     tintColor:(UIColor *)tintColor
                     blendMode:(CGBlendMode)blendMode;


@end
