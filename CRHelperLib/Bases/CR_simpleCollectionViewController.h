//
//  CR_simpleCollectionViewController.h
//  CRBaseLib
//
//  Created by 周文涛 on 2020/3/6.
//  Copyright © 2020 Crazs. All rights reserved.
//

#import "BaseViewController.h"
#import "NetworkManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface CR_simpleCollectionViewController : BaseViewController<UICollectionViewDelegateFlowLayout,UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView * collectionView;
@property (nonatomic, strong, readonly) UICollectionViewLayout *collectionViewLayout;

/**
 是否保留原始的view，默认NO,会使用collectionView替换self.view。如果想保留，请在viewdidload被调用之前设置该参数
 */
@property (nonatomic, assign) BOOL keepOriginalView;
@property (nonatomic, strong) NSMutableArray * dataSource;      //数据信息
@property (nonatomic, assign) NSInteger currentPage;            //当前页
@property (nonatomic, strong) UIView * emptyVC;                 //空内容

/**
 如果设置了layout，会按照layout排列
 */
@property (nonatomic, assign) NSUInteger numberInLine;          //每行多少个。默认4
@property (nonatomic, assign) CGFloat itemOffset;               //间距。默认8

@property (nonatomic, copy) void(^collectionViewDidSelectRowAtIndexPath)(UICollectionView *collectionView,NSIndexPath * indexPath);

- (instancetype)initWithCollectionViewLayout:(UICollectionViewLayout *)layout;

//头部刷新
- (void)reloadNetRequest;
- (void)reloadNetRequestSuccess:(nullable CRNetSuccess)success
                        failure:(nullable CRNetFailure)failure;
//底部刷新
- (void)addNetRequestSuccess:(nullable CRNetSuccess)success
                     failure:(nullable CRNetFailure)failure;
//处理请求
- (NSArray *)handleNetworkResponse:(id)response;

@end

NS_ASSUME_NONNULL_END
