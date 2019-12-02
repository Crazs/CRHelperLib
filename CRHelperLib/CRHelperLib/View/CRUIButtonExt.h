//
//  CRUIButtonExt.h
//  CRHelperLib
//
//  Created by 周文涛 on 2019/11/29.
//  Copyright © 2019年 Crazs. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
typedef NS_ENUM(NSInteger, CRButtonImageTextAlign) {
    CRButtonImageTextAlignNormal        = 0,    //左图右文
    CRButtonImageTextAlignTopBottom     = 1,    //上图下文
    CRButtonImageTextAlignRightLeft     = 2,    //右图左文
    CRButtonImageTextAlignLeft          = 3,    //左对齐
    CRButtonImageTextAlignRight         = 4,    //右对齐
};
*/
 
@interface UIButton(CRExt)

/**
@property (nonatomic, assign) CRButtonImageTextAlign imageTextAlign;
*/

+ (UIButton *)buttonWithFrame:(CGRect)frame;

//mix
/*!
 @param     selectColor  title selected color
 */
+ (UIButton *)createButton:(UIImage *)image
               selectImage:(UIImage *)selectImage
                     title:(NSString *)title
                  fontSize:(CGFloat)fontSize
                titleColor:(UIColor *)titleColor
               selectColor:(UIColor *)selectColor
                 backColor:(UIColor *)backColor;

+ (UIButton *)createButton:(UIImage *)image
               selectImage:(UIImage *)selectImage
                     title:(NSString *)title
                      font:(UIFont *)font
                titleColor:(UIColor *)titleColor
               selectColor:(UIColor *)selectColor
                 backColor:(UIColor *)backColor;

+ (UIButton *)createButton:(UIImage *)image
                     title:(NSString *)title
                      font:(UIFont *)font
                titleColor:(UIColor *)titleColor;



//System font
+ (UIButton *)createTextButton:(NSString *)title
                      fontSize:(CGFloat)fontSize
                    titleColor:(UIColor *)titleColor
                     backColor:(UIColor *)backColor
                   selectColor:(UIColor *)selectColor;

+ (UIButton *)createTextButton:(NSString *)title
                      fontSize:(CGFloat)fontSize
                    titleColor:(UIColor *)titleColor
                     backColor:(UIColor *)backColor;

+ (UIButton *)createTextButton:(NSString *)title
                      fontSize:(CGFloat)fontSize
                    titleColor:(UIColor *)titleColor;

//Custom font
/*!
 @param     selectColor  title selected color
 */
+ (UIButton *)createTextButton:(NSString *)title
                          font:(UIFont *)font
                    titleColor:(UIColor *)titleColor
                     backColor:(UIColor *)backColor
                   selectColor:(UIColor *)selectColor;

+ (UIButton *)createTextButton:(NSString *)title
                          font:(UIFont *)font
                    titleColor:(UIColor *)titleColor
                     backColor:(UIColor *)backColor;

+ (UIButton *)createTextButton:(NSString *)title
                          font:(UIFont *)font
                    titleColor:(UIColor *)titleColor;

//image
+ (UIButton *)createImageButton:(UIImage *)image
                    selectImage:(UIImage *)selectImage;


/**
- (void)setImageTextAlign:(CRButtonImageTextAlign)imageTextAlign
                   offset:(CGFloat)offset;


- (void)setBackColor:(UIColor *)color
            forState:(UIControlState)state;

*/


@end

NS_ASSUME_NONNULL_END
