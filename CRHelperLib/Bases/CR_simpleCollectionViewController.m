//
//  CR_simpleCollectionViewController.m
//  CRBaseLib
//
//  Created by 周文涛 on 2020/3/6.
//  Copyright © 2020 Crazs. All rights reserved.
//

#import "CR_simpleCollectionViewController.h"
#import "CR_simpleEmptyView.h"
#import <MJRefresh/MJRefresh.h>

#define D_lineNum   4
#define D_offset 8

@interface CR_simpleCollectionViewController ()
@property (nonatomic, strong, readwrite) UICollectionViewLayout *collectionViewLayout;
@end

@implementation CR_simpleCollectionViewController

- (instancetype)init{
    self = [super init];
    if (self) {
        [self config];
    }
    return self;
}

- (instancetype)initWithCollectionViewLayout:(UICollectionViewLayout *)layout{
    self = [super init];
    if (self) {
        _collectionViewLayout = layout;
        [self config];
    }
    return self;
    
}

- (void)config{
    _currentPage = 1;
    _dataSource = [[NSMutableArray alloc] init];
    _keepOriginalView = NO;
    _numberInLine = D_lineNum;
    _itemOffset = D_offset;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createSubView];
    [self reloadNetRequest];
}

#pragma mark - HTTP
//头部刷新
- (void)reloadNetRequest{
    if (!self.collectionView.mj_header.isRefreshing) {
        [self.collectionView.mj_header beginRefreshing];
    }
}

- (void)reloadNetRequestSuccess:(CRNetSuccess)success failure:(CRNetFailure)failure{
    failure(-1,@"函数未定义");
}
//底部刷新
- (void)addNetRequestSuccess:(CRNetSuccess)success failure:(CRNetFailure)failure{
    failure(-1,@"函数未定义");
}

- (NSArray *)handleNetworkResponse:(id)response{
    return @[];
}

#pragma mark - Delegate

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _dataSource.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (self.collectionViewDidSelectRowAtIndexPath) {
        self.collectionViewDidSelectRowAtIndexPath(collectionView, indexPath);
    }
}

#pragma mark - Public

#pragma mark - Private

- (void)createSubView{

    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:self.collectionViewLayout];
    if (self.keepOriginalView) {
        [self.view addSubview:self.collectionView];
        self.collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    }else{
        self.view = self.collectionView;
    }
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
}

#pragma mark - Setter

#pragma mark - Getter

- (UIView *)emptyVC{
    if (_emptyVC) {
        return _emptyVC;
    }
    _emptyVC = [[CR_simpleEmptyView alloc] init];
    return _emptyVC;
}

- (UICollectionViewLayout *)collectionViewLayout{
    if (_collectionViewLayout) {
        return _collectionViewLayout;
    }
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumLineSpacing = self.itemOffset;
    layout.minimumInteritemSpacing = self.itemOffset;
    layout.sectionInset = UIEdgeInsetsMake(self.itemOffset, self.itemOffset, self.itemOffset, self.itemOffset);
    CGFloat f =  [self sizeForCRMediaContainItem:CGRectGetWidth(self.view.bounds)];
    layout.itemSize = CGSizeMake(f, f);
    _collectionViewLayout = layout;
    
    return _collectionViewLayout;
}

- (CGFloat)sizeForCRMediaContainItem:(CGFloat)width{
    return floor((width - (self.itemOffset * (self.numberInLine + 1))) / self.numberInLine);
}

@end
