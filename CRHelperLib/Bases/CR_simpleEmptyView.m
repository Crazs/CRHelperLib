//
//  CR_simpleEmptyView.m
//  CRBaseLib
//
//  Created by 周文涛 on 2020/3/5.
//  Copyright © 2020 Crazs. All rights reserved.
//

#import "CR_simpleEmptyView.h"

@implementation CR_simpleEmptyView

- (instancetype)init{
    self = [super init];
    if (self) {
        [self createSubView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self createSubView];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder{
    self = [super initWithCoder:coder];
    if (self) {
        [self createSubView];
    }
    return self;
}

- (void)createSubView{
    //初始化子视图
   
    [self makeSubViewsLayout];
}

- (void)makeSubViewsLayout{
    //添加约束
}

@end
