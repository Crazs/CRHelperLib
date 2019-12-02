//
//  CRUIColorExt.h
//  CRHelperLib
//
//  Created by 周文涛 on 2019/11/29.
//  Copyright © 2019年 Crazs. All rights reserved.
//

#import <UIKit/UIKit.h>

#define UIColorHex(a)       [UIColor colorWithHexString:a]

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (CRExt)

/*!
 @param     colorString    @"#FFFFFF"
 @return    UIColor
 */
+ (UIColor*)colorWithHexString:(NSString*)colorString;

@end

NS_ASSUME_NONNULL_END
