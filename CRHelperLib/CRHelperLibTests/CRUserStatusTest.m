//
//  CRUserStatusTest.m
//  CRHelperLibTests
//
//  Created by 周文涛 on 2019/12/2.
//  Copyright © 2019年 Crazs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CRUserStatus.h"

@interface CRUserStatusTest : XCTestCase

@end

@implementation CRUserStatusTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    CRUserStatus * userStatus = [CRUserStatus shareUser];
    
    [userStatus cleanStatus];
    [userStatus loadUserStatus];
    [userStatus storageUserStatus];
    
    userStatus.login = YES;
    userStatus.token = @"123";
    CRAccount * account =  [[CRAccount alloc] init];
    userStatus.localAccount = account;
    [userStatus storageUserStatus];
    [userStatus loadUserStatus];
    
    account = userStatus.localAccount;
    account.name= @"neko";
    account.nickname = @"neko";
    CRMediaImage * imgMd = [[CRMediaImage alloc] init];
    account.header = imgMd;
    imgMd.urlPath = @"2222222";
    imgMd.localPath = @"3333333";
    
    [userStatus storageUserStatus];
    [userStatus loadUserStatus];
    
    
    [userStatus logoutAccount];
    [userStatus loadUserStatus];
    NSLog(@"%@",userStatus);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
