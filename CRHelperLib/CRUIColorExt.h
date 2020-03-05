//
//  CRUIColorExt.h
//  CRHelperLib
//
//  Created by 周文涛 on 2019/11/29.
//  Copyright © 2019年 Crazs. All rights reserved.
//

#import <UIKit/UIKit.h>

#define UIColorHex(_a_)   [UIColor colorWithHexString:_a_]
#define RGB(R,G,B)      [UIColor colorWithRed:R/255.0f green:G/255.0f blue:B/255.0f alpha:1.0f]
#define RGBA(R,G,B,A)   [UIColor colorWithRed:R/255.0f green:G/255.0f blue:B/255.0f alpha:A]


#define Color_333       UIColorHex(@"#333333")
#define Color_666       UIColorHex(@"#666666")
#define Color_999       UIColorHex(@"#999999")
#define Color_000       UIColorHex(@"#000000")
#define Color_FFF       UIColorHex(@"#FFFFFF")
#define Color_EFEFEF    UIColorHex(@"#EFEFEF")
#define Color_F4F4F4    UIColorHex(@"#F4F4F4")
#define Color_DFDFDF    UIColorHex(@"#DFDFDF")

#define Color_Black     [UIColor blackColor]
#define Color_DarkGray  [UIColor darkGrayColor]
#define Color_LightGray [UIColor lightGrayColor]
#define Color_White     [UIColor whiteColor]
#define Color_Gray      [UIColor grayColor]
#define Color_Red       [UIColor redColor]
#define Color_Green     [UIColor greenColor]
#define Color_Blue      [UIColor blueColor]
#define Color_Cyan      [UIColor cyanColor]
#define Color_Yellow    [UIColor yellowColor]
#define Color_Magenta   [UIColor magentaColor]
#define Color_Orange    [UIColor orangeColor]
#define Color_Purple    [UIColor purpleColor]
#define Color_Brown     [UIColor brownColor]
#define Color_Clear     [UIColor clearColor]


NS_ASSUME_NONNULL_BEGIN

@interface UIColor (CRExt)

/*!
 @param     colorString    @"#FFFFFF"
 @return    UIColor
 */
+ (UIColor*)colorWithHexString:(NSString*)colorString;
+ (UIColor*)colorWithHexString:(NSString*)colorString alpha:(CGFloat)alpha;


@end

NS_ASSUME_NONNULL_END
