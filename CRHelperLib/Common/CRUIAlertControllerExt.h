//
//  CRUIAlertControllerExt.h
//  CRHelperLib
//
//  Created by 周文涛 on 2020/2/23.
//  Copyright © 2020 Crazs. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIAlertController(CRExt)

@property (class) NSString *cancelText;
@property (class) NSString *confirmText;

//不带cancel
+ (instancetype)CR_alertControllerWithMessage:(NSString *)message;

+ (instancetype)CR_alertControllerWithTitle:(NSString * _Nullable )title
                                    message:(NSString *)message;

//带cancel
+ (instancetype)CR_alertControllerWithMessage:(NSString *)message
                                      confirm:(void (^ __nullable)(UIAlertAction *action))handler;

+ (instancetype)CR_alertControllerWithTitle:(NSString * _Nullable )title
                                    Message:(NSString *)message
                                    confirm:(void (^ __nullable)(UIAlertAction *action))handler;
@end

NS_ASSUME_NONNULL_END
