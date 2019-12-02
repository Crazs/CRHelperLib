//
//  CRUtils.h
//  CRHelperLib
//
//  Created by 周文涛 on 2019/11/29.
//  Copyright © 2019年 Crazs. All rights reserved.
//

#ifndef Utils_h
#define Utils_h

#ifndef kScreenWidth
#define kScreenWidth    [UIScreen mainScreen].bounds.size.width
#endif
#ifndef kScreenHeight
#define kScreenHeight   [UIScreen mainScreen].bounds.size.height
#endif

#define kStatusBarHeight    [[UIApplication sharedApplication] statusBarFrame].size.height

#define iOS_Version     [[UIDevice currentDevice] systemVersion].floatValue
#define kCurVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

#define WS(weakSelf)  __weak __typeof (&*self)weakSelf = self


//路径
#define kDocumentPath [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define kLibraryPath  [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define kCachesPath   [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0]


#define UIBoldFont(a)   [UIFont boldSystemFontOfSize:a]
#define UISystemFont(a) [UIFont systemFontOfSize:a]

#define CGFloatAutoFit(a) round(a*(MIN(kScreenWidth, kScreenHeight)/375.))
#define CGFAF(a) round(a*(MIN(kScreenWidth, kScreenHeight)/320.))


//图片
#define UIIMAGE_NAME(a) [UIImage imageNamed:a]

#endif /* Utils_h */
