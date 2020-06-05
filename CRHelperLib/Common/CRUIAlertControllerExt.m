//
//  CRUIAlertControllerExt.m
//  CRHelperLib
//
//  Created by 周文涛 on 2020/2/23.
//  Copyright © 2020 Crazs. All rights reserved.
//

#import "CRUIAlertControllerExt.h"

@implementation UIAlertController(CRExt)
static NSString *_confirmText   = @"确定";
static NSString *_cancelText    = @"取消";

#pragma mark - Setter & Getter
+(void)setConfirmText:(NSString *)confirmText{
    _confirmText = confirmText;
}
+(NSString *)confirmText{
    return _confirmText;
}

+(void)setCancelText:(NSString *)cancelText{
    _cancelText = cancelText;
}
+(NSString *)cancelText{
    return _cancelText;
}


#pragma mark - Function
+ (instancetype)CR_alertControllerWithMessage:(NSString *)message{
    return [self CR_alertControllerWithTitle:nil message:message];
}
+ (instancetype)CR_alertControllerWithTitle:(NSString *)title message:(NSString *)message{
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * confirm = [UIAlertAction actionWithTitle:_confirmText style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:confirm];
    return alert;
}

+ (instancetype)CR_alertControllerWithMessage:(NSString *)message confirm:(void (^)(UIAlertAction * _Nonnull))handler{
    return [self CR_alertControllerWithTitle:nil Message:message confirm:handler];
}

+ (instancetype)CR_alertControllerWithTitle:(NSString *)title Message:(NSString *)message confirm:(void (^)(UIAlertAction * _Nonnull))handler{
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * cancel = [UIAlertAction actionWithTitle:_cancelText style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction * confirm = [UIAlertAction actionWithTitle:_confirmText style:UIAlertActionStyleDefault handler:handler];
    [alert addAction:cancel];
    [alert addAction:confirm];
    return alert;
}
                              
@end
