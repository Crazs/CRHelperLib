//
//  BaseModel.m
//  CRBaseLib
//
//  Created by 周文涛 on 2020/3/5.
//  Copyright © 2020 Crazs. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

+(BOOL)supportsSecureCoding{
    return YES;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if (self) {
        self.mID = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(mID))];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.mID forKey:NSStringFromSelector(@selector(mID))];
}

@end


/**
 @brief     YYModel的扩充
 */
@implementation BaseModel(YYModel)

//返回一个 Dict，将 Model 属性名对映射到 JSON 的 Key。
+ (NSDictionary *)modelCustomPropertyMapper{
    return @{@"mID" : @"id"};
}

@end
