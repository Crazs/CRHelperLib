//
//  CRUIImageExt.h
//  CRHelperLib
//
//  Created by 周文涛 on 2020/2/23.
//  Copyright © 2020 Crazs. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define UIImage_name(_a_)   [UIImage imageNamed:_a_]
#define UIImage_name_Render(_a_,_r_)    [[UIImage imageNamed:_a_] imageWithRenderingMode:_r_]
#define UIImage_name_Original(_a_)      UIImage_name_Render(_a_,UIImageRenderingModeAlwaysOriginal)
#define UIImage_name_Template(_a_)      UIImage_name_render(_a_,UIImageRenderingModeAlwaysTemplate)


typedef NS_ENUM(NSInteger, GradientType) {
    GradientFromTopToBottom = 1,            
    GradientFromLeftToRight,
    GradientFromLeftTopToRightBottom,
    GradientFromLeftBottomToRightTop
};

@interface UIImage(CRExt)

+ (UIImage *)imageWithColor:(UIColor *)color;

- (UIImage*)scaleToSize:(CGSize)size;
/**
 *  根据给定的颜色，生成渐变色的图片
 *  @param imageSize        要生成的图片的大小
 *  @param colorArr         渐变颜色的数组
 *  @param percents          渐变颜色的占比数组
 *  @param gradientType     渐变色的类型
 */
- (UIImage *)createImageWithSize:(CGSize)imageSize
                  gradientColors:(NSArray *)colorArr
                      percentage:(NSArray *)percents
                    gradientType:(GradientType)gradientType;

@end

NS_ASSUME_NONNULL_END
