//
//  CR_simpleEmptyView.h
//  CRBaseLib
//
//  Created by 周文涛 on 2020/3/5.
//  Copyright © 2020 Crazs. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CR_simpleEmptyView : UIView

@property (nonatomic, strong) UILabel * rTextLabel;
@property (nonatomic, strong) UIButton * button;

@property (nonatomic,copy)void(^refreshBlock)(void);

@end

NS_ASSUME_NONNULL_END
