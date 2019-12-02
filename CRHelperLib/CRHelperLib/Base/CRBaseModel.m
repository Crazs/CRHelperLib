//
//  CRBaseModel.m
//  CRHelperLib
//
//  Created by 周文涛 on 2019/12/2.
//  Copyright © 2019年 Crazs. All rights reserved.
//

#import "CRBaseModel.h"

@implementation CRBaseModel

+(BOOL)supportsSecureCoding{
    return YES;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if (self) {
        self.mID = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(mID))];
        self.mHash = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(mHash))];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.mID forKey:NSStringFromSelector(@selector(mID))];
    [aCoder encodeObject:self.mHash forKey:NSStringFromSelector(@selector(mHash))];
}


@end
