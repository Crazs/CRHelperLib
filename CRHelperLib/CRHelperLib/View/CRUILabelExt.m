//
//  CRUILabelExt.m
//  CRHelperLib
//
//  Created by 周文涛 on 2019/11/29.
//  Copyright © 2019年 Crazs. All rights reserved.
//

#import "CRUILabelExt.h"
#import "CRUtils.h"

@implementation UILabel(CRExt)

//System Font
+ (UILabel *)createLabel:(NSString *)text
                fontSize:(CGFloat)fontSize
                   color:(UIColor *)fontColor
               textAlign:(NSTextAlignment)textAlign{
    return [self createLabel:text
                        font:UISystemFont(fontSize)
                       color:fontColor
                   textAlign:textAlign];
}

+ (UILabel *)createLabel:(NSString *)text
                fontSize:(CGFloat)fontSize
                   color:(UIColor *)fontColor{
    
    return [self createLabel:text
                    fontSize:fontSize
                       color:fontColor
                   textAlign:NSTextAlignmentLeft];
}
    

+ (UILabel *)createLabel:(NSString *)text
                    font:(UIFont *)font
                   color:(UIColor *)fontColor
               textAlign:(NSTextAlignment)textAlign{
    
    UILabel * label = [[UILabel alloc] init];
    label.text = text;
    label.font = font;
    label.textColor = fontColor;
    label.textAlignment = textAlign;

    return label;
}

+ (UILabel *)createLabel:(NSString *)text
                    font:(UIFont *)font
                   color:(UIColor *)fontColor{
    
    return [self createLabel:text
                        font:font
                       color:fontColor
                   textAlign:NSTextAlignmentLeft];
    
}


@end
