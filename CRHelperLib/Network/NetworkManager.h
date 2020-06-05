//
//  NetworkManager.h
//  CRBaseLib
//
//  Created by 周文涛 on 2020/3/5.
//

#import <Foundation/Foundation.h>

typedef void (^CRNetSuccess)(id _Nullable responseData);
typedef void (^CRNetFailure)(int errId, NSString * _Nullable errMsg);

NS_ASSUME_NONNULL_BEGIN

@class AFHTTPSessionManager;
@interface NetworkManager : NSObject

@property (nonatomic, strong) AFHTTPSessionManager * sessionManager;
/*!
 @brief     全局网络管理
 */
+ (NetworkManager *)sharedManager;


- (void)GetReq:(NSString *)url
         param:(NSDictionary *)param
       success:(nullable CRNetSuccess)success
       failure:(nullable CRNetFailure)failure;

- (void)PostReq:(NSString *)url
          param:(NSDictionary *)param
        success:(nullable CRNetSuccess)success
        failure:(nullable CRNetFailure)failure;

- (void)DeleteReq:(NSString *)url
            param:(NSDictionary *)param
          success:(nullable CRNetSuccess)success
          failure:(nullable CRNetFailure)failure;

@end

NS_ASSUME_NONNULL_END
