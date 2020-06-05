//
//  NetworkManager.m
//  CRBaseLib
//
//  Created by 周文涛 on 2020/3/5.
//

#import "NetworkManager.h"

@implementation NetworkManager

static NetworkManager * manager = nil;
+ (NetworkManager *)sharedManager{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

- (void)GetReq:(NSString *)url
         param:(NSDictionary *)param
       success:(nullable CRNetSuccess)success
       failure:(nullable CRNetFailure)failure{
}

- (void)PostReq:(NSString *)url
          param:(NSDictionary *)param
        success:(nullable CRNetSuccess)success
        failure:(nullable CRNetFailure)failure{
}

- (void)DeleteReq:(NSString *)url
            param:(NSDictionary *)param
          success:(nullable CRNetSuccess)success
          failure:(nullable CRNetFailure)failure{
}


@end
