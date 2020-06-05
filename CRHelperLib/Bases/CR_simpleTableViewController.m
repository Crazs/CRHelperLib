//
//  CR_simpleTableViewController.m
//  CRBaseLib
//
//  Created by 周文涛 on 2020/3/5.
//  Copyright © 2020 Crazs. All rights reserved.
//

#import "CR_simpleTableViewController.h"
#import "CR_simpleEmptyView.h"
#import <MJRefresh/MJRefresh.h>

@interface CR_simpleTableViewController ()

@end

@implementation CR_simpleTableViewController

- (UIView *)emptyVC{
    if (_emptyVC) {
        return _emptyVC;
    }
    _emptyVC = [[CR_simpleEmptyView alloc] init];
    return _emptyVC;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        _currentPage = 1;
        _dataSource = [[NSMutableArray alloc] init];
        _keepOriginalView = NO;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createSubView];
    [self reloadNetRequest];
}

- (void)createSubView{
    [super createSubView];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    if (self.keepOriginalView) {
        [self.view addSubview:self.tableView];
        self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    }else{
        self.view = self.tableView;
    }
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
}

#pragma mark - Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.tableViewDidSelectRowAtIndexPath) {
        self.tableViewDidSelectRowAtIndexPath(tableView, indexPath);
    }
}

#pragma mark - HTTP
//头部刷新
- (void)reloadNetRequest{
    if (!self.tableView.mj_header.isRefreshing) {
        [self.tableView.mj_header beginRefreshing];
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

@end
