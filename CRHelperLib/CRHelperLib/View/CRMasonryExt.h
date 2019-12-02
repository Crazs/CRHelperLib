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

#import "Masonry.h"


#define MAS_top(x,y)            make.top.equalTo(x).with.offset(y)
#define MAS_left(x,y)           make.left.equalTo(x).with.offset(y)
#define MAS_bottom(x,y)         make.bottom.equalTo(x).with.offset(y)
#define MAS_right(x,y)          make.roght.equalTo(x).with.offset(y)
#define MAS_edges(x,y)          make.roght.equalTo(x).with.offset(y)


#define MAS_width(x)            make.width.equalTo(x)
#define MAS_height(x)           make.height.equalTo(x)
#define MAS_center(x)           make.center.equalTo(x)
#define MAS_centerX(x,y)        make.centerX.equalTo(x).offset(y)
#define MAS_centerY(x,y)        make.centerY.equalTo(x).offset(y)

#define MAS_topLeft(x,y)        make.top.left.equalTo(x).offset(y)
#define MAS_topRight(x,y)       make.top.right.equalTo(x).offset(y);
#define MAS_bottomLeft(x,y)     make.bottom.left.equalTo(x).offset(y)
#define MAS_bottomRight(x,y)    make.bottom.right.equalTo(x).offset(y)

#define MAS_topLeftRight(x,y)       make.top.left.right.equalTo(x).offset(y)
#define MAS_bottomLeftRight(x,y)    make.bottom.left.right.equalTo(x).offset(y)
#define MAS_leftTopBottom(x,y)      make.left.top.bottom.equalTo(x).offset(y)
#define MAS_rightTopBottom(x,y)     make.right.top.bottom.equalTo(x).offset(y)

#define MAS_full(x,y)           make.top.left.bottom.right.equalTo(x).offset(y)

#endif /* MasonryExt_h */
