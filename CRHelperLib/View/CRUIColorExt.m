//
//  CRUIColorExt.m
//  CRHelperLib
//
//  Created by 周文涛 on 2019/11/29.
//  Copyright © 2019年 Crazs. All rights reserved.
//

#import "CRUIColorExt.h"

@implementation UIColor (CRExt)

+ (UIColor*)colorWithHexString:(NSString*)colorString{
    
    if([colorString hasPrefix:@"#"]){
        colorString = [colorString substringFromIndex:1];
    }
    NSScanner*scanner = [NSScanner scannerWithString:colorString];
    unsigned hexNum;
    if(![scanner scanHexInt:&hexNum]){
        return nil;
    }    
    return[UIColor colorWithRGBHex:hexNum];
}

+ (UIColor*)colorWithRGBHex:(UInt32)hex{
    
    int r = (hex >>16) &0xFF;
    int g = (hex >>8) &0xFF;
    int b = (hex) &0xFF;
    return[UIColor colorWithRed:r /255.0f
                          green:g /255.0f
                           blue:b /255.0f
                          alpha:1.0f];
    
}

@end
