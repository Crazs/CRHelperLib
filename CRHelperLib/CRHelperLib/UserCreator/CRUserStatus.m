//
//  CRUserStatus.m
//  CRHelperLib
//
//  Created by 周文涛 on 2019/12/2.
//  Copyright © 2019年 Crazs. All rights reserved.
//

#import "CRUserStatus.h"

NSString *const CRUserLoginNotification             = @"CRUserLoginNot";
NSString *const CRUserLogoutNotification            = @"CRUserLogoutNot";
NSString *const CRUserTokenExpiredNotification      = @"CRUserTokenExpiredNot";

NSString * const CRUSER_STATUS_INFO                 = @"CRUser_status_info";
NSString * const CRUSER_ACCOUNTS                    = @"CRUser_accounts";

@implementation CRUserStatus

static CRUserStatus * _rUser = nil;
+(BOOL)supportsSecureCoding{
    return YES;
}

+ (instancetype)shareUser{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _rUser = [[CRUserStatus alloc] init];
    });
    return _rUser;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        _login = NO;
        _token = nil;
        _localAccount = nil;
    }
    return self;
}


- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if (self) {
        self.login = [[aDecoder decodeObjectForKey:NSStringFromSelector(@selector(isLogin))]boolValue];
        self.token = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(token))];
        self.localAccount = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(localAccount))];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:@(self.login) forKey:NSStringFromSelector(@selector(isLogin))];
    [aCoder encodeObject:self.token forKey:NSStringFromSelector(@selector(token))];
    [aCoder encodeObject:self.localAccount forKey:NSStringFromSelector(@selector(localAccount))];
}


#pragma mark - 当前的账户信息
///读取当前用户状态
- (void)loadUserStatus{
    
    NSData * userInfoData = [[NSUserDefaults standardUserDefaults] objectForKey:CRUSER_STATUS_INFO];
    NSSet * classSet = [[NSSet alloc] initWithObjects:[CRUserStatus class], [CRAccount class] , [CRMediaImage class], [CRAuthentication class], nil];

    CRUserStatus * userStatus = [NSKeyedUnarchiver unarchivedObjectOfClasses:classSet fromData:userInfoData error:nil];
    
    self.login = userStatus.isLogin;
    self.token = userStatus.token;
    self.localAccount = userStatus.localAccount;
}

///    存储当前用户状态
- (void)storageUserStatus{
    NSData * userInfoData = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:YES error:nil];
  
    [[NSUserDefaults standardUserDefaults] setObject:userInfoData forKey:(NSString *)CRUSER_STATUS_INFO] ;
}

///    登录账户
- (void)loginAccount:(CRAccount *)account
               token:(NSString *)token{
    _login = YES;
    _token = token;
    _localAccount = account;
    [self storageUserStatus];
    [self pushLoginNotification];
}


///     登出账户
- (void)logoutAccount{
    CRUserStatus * userStatusCopy = [self copy];
    _login = NO;
    _token = nil;
    _localAccount = nil;
    [self storageUserStatus];
    [self pushLogoutNotification:userStatusCopy];
}

///     存储账户信息
- (void)storageUserAccount:(CRAccount *)account{
    NSMutableArray * tmpArr = [[self allAccounts] mutableCopy];
    [tmpArr addObject:account];
    [self storageUserAccount:[tmpArr copy]];
}

///     清除账户信息
- (void)cleanUserIdenfitier:(NSString *)identirier{
    NSMutableArray * tmpArr = [[self allAccounts] mutableCopy];
#warning MMS 这里的便利太low了，以后改一下
    __block id tmpAcc;
    [tmpArr enumerateObjectsUsingBlock:^(CRAccount *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj.mID isEqualToString:identirier]) {
            tmpAcc = obj;
            *stop = YES;
        }
    }];
    [tmpArr removeObject:tmpAcc];
}

///     获取所有账户信息列表，多账户模式
- (NSArray *)allAccounts{
    
    NSData * accountsArrData = [[NSUserDefaults standardUserDefaults] objectForKey:CRUSER_ACCOUNTS];
    NSArray * accounts = [NSKeyedUnarchiver unarchivedObjectOfClass:[NSArray class] fromData:accountsArrData error:nil];
  
    return accounts;
}

///     存储多有账户信息
- (void)storageAccounts:(NSArray *)accounts{
    NSData * accountsData = [NSKeyedArchiver archivedDataWithRootObject:accounts requiringSecureCoding:NO error:nil];
    [[NSUserDefaults standardUserDefaults] setObject:accountsData forKey:(NSString *)CRUSER_ACCOUNTS] ;
}


#pragma mark - Notification
- (void)pushLoginNotification{
    [[NSNotificationCenter defaultCenter] postNotificationName:CRUserLoginNotification object:self];
}

- (void)pushLogoutNotification:(CRUserStatus *)oldUserStatus{
    [[NSNotificationCenter defaultCenter] postNotificationName:CRUserLogoutNotification object:oldUserStatus];
}


///     清除状态，测试专用
- (void)cleanStatus{
    
    CRUserStatus * userStatus = [[CRUserStatus alloc] init];
    [userStatus storageUserStatus];
    [self loadUserStatus];
}



@end
