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
    return [self colorWithHexString:colorString alpha:1.0f];
}

+ (UIColor*)colorWithHexString:(NSString*)colorString alpha:(CGFloat)alpha{
    if([colorString hasPrefix:@"#"]){
        colorString = [colorString substringFromIndex:1];
    }else if ([colorString hasPrefix:@"0x"] || [colorString hasPrefix:@"0X"]){
        colorString = [colorString substringFromIndex:2];
    } 
    NSScanner*scanner = [NSScanner scannerWithString:colorString];
    unsigned hexNum;
    if(![scanner scanHexInt:&hexNum]){
        return nil;
    }
    return [self colorWithRGBHex:hexNum alpha:alpha];
}

+ (UIColor*)colorWithRGBHex:(UInt32)hex alpha:(CGFloat)alpha{
    int r = (hex >>16) &0xFF;
    int g = (hex >>8) &0xFF;
    int b = (hex) &0xFF;
    return[UIColor colorWithRed:r /255.0f
                          green:g /255.0f
                           blue:b /255.0f
                          alpha:alpha];
    
}

+ (UIColor*)randomColor{
    return [UIColor colorWithRed:arc4random()%255/255.0
                           green:arc4random()%255/255.0
                            blue:arc4random()%255/255.0
                           alpha:1];
}


@end
