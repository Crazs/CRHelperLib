//
//  CRUIAlertControllerExt.m
//  CRHelperLib
//
//  Created by 周文涛 on 2020/2/23.
//  Copyright © 2020 Crazs. All rights reserved.
//

#import "CRUIAlertControllerExt.h"

#define Alert_confirm   @"确定"
#define Alert_cancel    @"取消"

@implementation UIAlertController(CRExt)

+ (instancetype)alertControllerWithMessage:(NSString *)message{
    return [self alertControllerWithTitle:nil message:message];
}
+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message{
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * confirm = [UIAlertAction actionWithTitle:Alert_confirm style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:confirm];
    return alert;
}

+ (instancetype)alertControllerWithMessage:(NSString *)message confirm:(void (^)(UIAlertAction * _Nonnull))handler{
    return [self alertControllerWithTitle:nil Message:message confirm:handler];
}

+ (instancetype)alertControllerWithTitle:(NSString *)title Message:(NSString *)message confirm:(void (^)(UIAlertAction * _Nonnull))handler{
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * cancel = [UIAlertAction actionWithTitle:Alert_cancel style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction * confirm = [UIAlertAction actionWithTitle:Alert_confirm style:UIAlertActionStyleDefault handler:[handler copy]];
    [alert addAction:cancel];
    [alert addAction:confirm];
    return alert;
}
                              
@end
