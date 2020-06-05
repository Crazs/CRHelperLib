//
//  BaseModel.h
//  CRBaseLib
//
//  Created by 周文涛 on 2020/3/5.
//  Copyright © 2020 Crazs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseModel : NSObject<NSSecureCoding>
@property (nonatomic,copy) NSString *mID;
@end

NS_ASSUME_NONNULL_END
