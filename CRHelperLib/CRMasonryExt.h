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


#define MAS_top(_x_)            make.top.mas_equalTo(_x_)
#define MAS_left(_x_)           make.left.mas_equalTo(_x_)
#define MAS_bottom(_x_)         make.bottom.mas_equalTo(_x_)
#define MAS_right(_x_)          make.right.mas_equalTo(_x_)

#define MAS_top(_x_,_y_)            make.top.mas_equalTo(_x_).offset(_y_)
#define MAS_left(_x_,_y_)           make.left.mas_equalTo(_x_).offset(_y_)
#define MAS_bottom(_x_,_y_)         make.bottom.mas_equalTo(_x_).offset(_y_)
#define MAS_right(_x_,_y_)          make.right.mas_equalTo(_x_).offset(_y_)

#define MAS_width(_x_)              make.width.mas_equalTo(_x_)
#define MAS_height(_x_)             make.height.mas_equalTo(_x_)
#define MAS_size(_x_)               make.width.height.mas_equalTo(_x_)
#define MAS_centerX(_v_,_x_)        make.centerX.mas_equalTo(_v_).offset(_x_)
#define MAS_centerY(_v_,_y_)        make.centerY.mas_equalTo(_v_).offset(_y_)

#define MAS_topLeft(_x_,_y_)        make.top.left.mas_equalTo(_x_).offset(_y_)
#define MAS_topRight(_x_,_y_)       make.top.right.mas_equalTo(_x_).offset(_y_);
#define MAS_bottomLeft(_x_,_y_)     make.bottom.left.mas_equalTo(_x_).offset(_y_)
#define MAS_bottomRight(_x_,_y_)    make.bottom.right.mas_equalTo(_x_).offset(_y_)
#define MAS_leftRight(_x_,_y_)      make.left.right.mas_equalTo(_x_).offset(_y_)

#define MAS_topLeft(_x_)            make.top.left.mas_equalTo(_x_)
#define MAS_topRight(_x_)           make.top.right.mas_equalTo(_x_)
#define MAS_bottomLeft(_x_)         make.bottom.left.mas_equalTo(_x_)
#define MAS_bottomRight(_x_)        make.bottom.right.mas_equalTo(_x_)
#define MAS_leftRight(_x_)          make.left.right.mas_equalTo(_x_)

#define MAS_topLeftRight(_x_)       make.top.left.right.mas_equalTo(_x_)
#define MAS_bottomLeftRight(_x_)    make.bottom.left.right.mas_equalTo(_x_)
#define MAS_leftTopBottom(_x_)      make.left.top.bottom.mas_equalTo(_x_)
#define MAS_rightTopBottom(_x_)     make.right.top.bottom.mas_equalTo(_x_)

#define MAS_topLeftRight(_x_,_y_)       make.top.left.right.mas_equalTo(_x_).offset(_y_)
#define MAS_bottomLeftRight(_x_,_y_)    make.bottom.left.right.mas_equalTo(_x_).offset(_y_)
#define MAS_leftTopBottom(_x_,_y_)      make.left.top.bottom.mas_equalTo(_x_).offset(_y_)
#define MAS_rightTopBottom(_x_,_y_)     make.right.top.bottom.mas_equalTo(_x_).offset(_y_)

#define MAS_full(_x_)               make.top.left.bottom.right.mas_equalTo(_x_)
#define MAS_full(_x_,_y_)           make.top.left.bottom.right.mas_equalTo(_x_).offset(_y_)

#endif /* MasonryExt_h */
