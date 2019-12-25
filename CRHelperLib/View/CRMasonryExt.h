//
//  CRMasonryExt.h
//  CRHelperLib
//
//  Created by 周文涛 on 2019/11/28.
//  Copyright © 2019年 Crazs. All rights reserved.
//



/*!
 @brief     Masonry的扩展
 */
#ifndef CRMasonryExt_h
#define CRMasonryExt_h

#import <Masonry/Masonry.h>


#define MAS_top(x,y)            make.top.mas_equalTo(x).with.offset(y)
#define MAS_left(x,y)           make.left.mas_equalTo(x).with.offset(y)
#define MAS_bottom(x,y)         make.bottom.mas_equalTo(x).with.offset(y)
#define MAS_right(x,y)          make.right.mas_equalTo(x).with.offset(y)
#define MAS_edges(x,y)          make.right.mas_equalTo(x).with.offset(y)

#define MAS_width(x)            make.width.mas_equalTo(x)
#define MAS_height(x)           make.height.mas_equalTo(x)
#define MAS_size(x)             make.width.height.mas_equalTo(x)
#define MAS_center(x)           make.center.mas_equalTo(x)
#define MAS_centerX(x,y)        make.centerX.mas_equalTo(x).offset(y)
#define MAS_centerY(x,y)        make.centerY.mas_equalTo(x).offset(y)

#define MAS_topLeft(x,y)        make.top.left.mas_equalTo(x).offset(y)
#define MAS_topRight(x,y)       make.top.right.mas_equalTo(x).offset(y);
#define MAS_bottomLeft(x,y)     make.bottom.left.mas_equalTo(x).offset(y)
#define MAS_bottomRight(x,y)    make.bottom.right.mas_equalTo(x).offset(y)
#define MAS_leftRight(x,y)      make.left.right.mas_equalTo(x).offset(y)

#define MAS_topLeftRight(x,y)       make.top.left.right.mas_equalTo(x).offset(y)
#define MAS_bottomLeftRight(x,y)    make.bottom.left.right.mas_equalTo(x).offset(y)
#define MAS_leftTopBottom(x,y)      make.left.top.bottom.mas_equalTo(x).offset(y)
#define MAS_rightTopBottom(x,y)     make.right.top.bottom.mas_equalTo(x).offset(y)

#define MAS_full(x,y)           make.top.left.bottom.right.mas_equalTo(x).offset(y)

#endif /* MasonryExt_h */
