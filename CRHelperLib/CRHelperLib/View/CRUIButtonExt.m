//
//  CRUIButtonExt.m
//  CRHelperLib
//
//  Created by 周文涛 on 2019/11/29.
//  Copyright © 2019年 Crazs. All rights reserved.
//

#import "CRUIButtonExt.h"
#import "CRUtils.h"

@implementation UIButton(CRExt)

+ (UIButton *)buttonWithFrame:(CGRect)frame{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    return btn;
}

//mix
+ (UIButton *)createButton:(UIImage *)image
               selectImage:(UIImage *)selectImage
                     title:(NSString *)title
                  fontSize:(CGFloat)fontSize
                titleColor:(UIColor *)titleColor
               selectColor:(UIColor *)selectColor
                 backColor:(UIColor *)backColor{
    
    return [self createButton:image
                  selectImage:selectImage
                        title:title
                         font:UISystemFont(fontSize)
                   titleColor:titleColor
                  selectColor:selectColor
                    backColor:backColor];
}

+ (UIButton *)createButton:(UIImage *)image
               selectImage:(UIImage *)selectImage
                     title:(NSString *)title
                      font:(UIFont *)font
                titleColor:(UIColor *)titleColor
               selectColor:(UIColor *)selectColor
                 backColor:(UIColor *)backColor{
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:selectImage forState:UIControlStateSelected];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setTitleColor:selectColor forState:UIControlStateSelected];
    [btn setBackgroundColor:backColor];
    
    return btn;
}

+ (UIButton *)createButton:(UIImage *)image
                     title:(NSString *)title
                      font:(UIFont *)font
                titleColor:(UIColor *)titleColor{
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    
    return btn;
}



//System font
+ (UIButton *)createTextButton:(NSString *)title
                      fontSize:(CGFloat)fontSize
                    titleColor:(UIColor *)titleColor
                     backColor:(UIColor *)backColor
                   selectColor:(UIColor *)selectColor{
    
    return [self createTextButton:title
                             font:UISystemFont(fontSize)
                       titleColor:titleColor
                        backColor:backColor
                      selectColor:selectColor];
   
}

+ (UIButton *)createTextButton:(NSString *)title
                      fontSize:(CGFloat)fontSize
                    titleColor:(UIColor *)titleColor
                     backColor:(UIColor *)backColor{
    
    return [self createTextButton:title
                         fontSize:fontSize
                       titleColor:titleColor
                        backColor:backColor
                      selectColor:titleColor];
    
}

+ (UIButton *)createTextButton:(NSString *)title
                      fontSize:(CGFloat)fontSize
                    titleColor:(UIColor *)titleColor{
    
    return [self createTextButton:title
                         fontSize:fontSize
                       titleColor:titleColor
                        backColor:[UIColor whiteColor]];
    
}

//Custom font
/*!
 @param     selectColor  title selected color
 */
+ (UIButton *)createTextButton:(NSString *)title
                          font:(UIFont *)font
                    titleColor:(UIColor *)titleColor
                     backColor:(UIColor *)backColor
                   selectColor:(UIColor *)selectColor{
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setTitleColor:selectColor forState:UIControlStateSelected];
    [btn setBackgroundColor:backColor];
    
    return btn;
}

+ (UIButton *)createTextButton:(NSString *)title
                          font:(UIFont *)font
                    titleColor:(UIColor *)titleColor
                     backColor:(UIColor *)backColor{
    
    return [self createTextButton:title
                             font:font
                       titleColor:titleColor
                        backColor:backColor
                      selectColor:titleColor];
}

+ (UIButton *)createTextButton:(NSString *)title
                          font:(UIFont *)font
                    titleColor:(UIColor *)titleColor{
    
    return [self createTextButton:title
                             font:font
                       titleColor:titleColor
                        backColor:[UIColor whiteColor]];
}

//image
+ (UIButton *)createImageButton:(UIImage *)image
                    selectImage:(UIImage *)selectImage{
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:selectImage forState:UIControlStateSelected];

    return btn;
}


/**
- (void)setImageTextAlign:(CRButtonImageTextAlign)imageTextAlign
                   offset:(CGFloat)offset{
    
}


- (void)setBackColor:(UIColor *)color
            forState:(UIControlState)state{
    
    
    
}
 */

@end
