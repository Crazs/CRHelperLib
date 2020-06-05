//
//  BaseViewController.h
//  CRBaseLib
//
//  Created by 周文涛 on 2020/3/3.
//  Copyright © 2020 Crazs. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController

@property (nonatomic, assign) BOOL isShowNavBar;

- (void)createSubView;

@end

NS_ASSUME_NONNULL_END
