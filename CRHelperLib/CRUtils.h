//
//  CRUtils.h
//  CRHelperLib
//
//  Created by 周文涛 on 2019/11/29.
//  Copyright © 2019年 Crazs. All rights reserved.
//

#ifndef Utils_h
#define Utils_h

///size
#ifndef ScreenWidth
#define ScreenWidth    [UIScreen mainScreen].bounds.size.width
#endif
#ifndef ScreenHeight
#define ScreenHeight   [UIScreen mainScreen].bounds.size.height
#endif

#define StatusBarHeight    [[UIApplication sharedApplication] statusBarFrame].size.height

#define iOS_Version     [[UIDevice currentDevice] systemVersion].floatValue
#define CurVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
#define IPHONEX (__SCREEN_WIDTH__ == 375.f && __SCREEN_HEIGHT__ == 812.f)

#define WEAK_SELF        typeof(self) __weak weakself= self;
#define STRONG_SELF      typeof(weakself) __strong strongSelf = weakself;


//路径
#define DocumentPath [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define LibraryPath  [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define CachesPath   [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0]

///适配
#define CGFloatAutoFit(a) round(a*(MIN(kScreenWidth, kScreenHeight)/375.))
#define CGFAF(a) round(a*(MIN(kScreenWidth, kScreenHeight)/320.))

//结束编辑
#define AllEndEditing ([[UIApplication sharedApplication].keyWindow endEditing:YES])

//
#define cellIdentifier(a)   NSStringFromClass([a class])

#endif /* Utils_h */
