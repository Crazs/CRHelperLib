//
//  CRUILabelExt.h
//  CRHelperLib
//
//  Created by 周文涛 on 2019/11/29.
//  Copyright © 2019年 Crazs. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel(CRExt)

//System Font
+ (UILabel *)createLabel:(NSString *)text
                fontSize:(CGFloat)fontSize
                   color:(UIColor *)fontColor
               textAlign:(NSTextAlignment)textAlign;

+ (UILabel *)createLabel:(NSString *)text
                fontSize:(CGFloat)fontSize
                   color:(UIColor *)fontColor;

//Custon font
+ (UILabel *)createLabel:(NSString *)text
                    font:(UIFont *)font
                   color:(UIColor *)fontColor
               textAlign:(NSTextAlignment)textAlign;

+ (UILabel *)createLabel:(NSString *)text
                    font:(UIFont *)font
                   color:(UIColor *)fontColor;


@end

NS_ASSUME_NONNULL_END
