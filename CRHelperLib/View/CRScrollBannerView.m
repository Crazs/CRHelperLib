//
//  CRScrollBannerView.m
//  AFNetworking
//
//  Created by 周文涛 on 2019/12/14.
//

#import "CRScrollBannerView.h"
#import <SDWebImage/UIImageView+WebCache.h>

#define PageC_W 100
#define PageC_H 20
#define PageMax 8
#define TimerInterval 5

@implementation CRBannerItem

@end




@interface CRScrollBannerView ()<UIScrollViewDelegate>

@property (nonatomic, strong) NSTimer * changeTimer;
@property (nonatomic, assign, readwrite) NSInteger currentIdx;
@property (nonatomic, strong) NSMutableDictionary * metDic;

@end

@implementation CRScrollBannerView



- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        _metDic = [[NSMutableDictionary alloc] init];
        [self createSubView];
    }
    return self;
}

- (void)createSubView{
    
    _scrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
    _scrollView.delegate = self;
    _scrollView.showsVerticalScrollIndicator = NO;
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.pagingEnabled = YES;
    [self addSubview:_scrollView];
    
    _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(self.frame.size.width*0.5-PageC_W*0.5, self.frame.size.height-PageC_H, PageC_W, PageC_H)];
    _pageControl.backgroundColor = [UIColor clearColor];
    _pageControl.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin |UIViewAutoresizingFlexibleTopMargin;
    _pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    _pageControl.pageIndicatorTintColor = [UIColor grayColor];
    
    [self addSubview:_pageControl];
}

#pragma mark - method
- (void)timerInvalidate{
    if (_changeTimer) {
        [_changeTimer invalidate];
        _changeTimer = nil;
    }
}


- (UIImageView *)getScrollItemImageViewImageURL:(NSURL *)imageURL tag:(NSInteger)tag callBack:(CRScrollItemTapBlock)callback{
    
    UIImageView * imageV = [[UIImageView alloc] init];
    
    imageV.backgroundColor = [UIColor whiteColor];
    imageV.contentMode = UIViewContentModeScaleAspectFill;
    imageV.layer.masksToBounds = YES;
    [imageV sd_setImageWithURL:imageURL];
    
    if (callback) {
        UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOnImageView:)];
        tap.numberOfTapsRequired = 1;
        tap.numberOfTouchesRequired = 1;
        [imageV addGestureRecognizer:tap];
        imageV.userInteractionEnabled = YES;
        imageV.tag = 5600 + tag;
        [_metDic setObject:[callback copy] forKey:[NSString stringWithFormat:@"%ld",(long)imageV.tag]];
    }
    return imageV;
}

- (void)tapOnImageView:(UITapGestureRecognizer *)tap{
    
    UIImageView * imageV = (UIImageView *)tap.view;
    CRScrollItemTapBlock tapCallBack = [_metDic objectForKey:[NSString stringWithFormat:@"%ld",imageV.tag]];
    if (tapCallBack) {
        tapCallBack();
    }
}


- (void)addTimer{

    _changeTimer = [NSTimer scheduledTimerWithTimeInterval:TimerInterval target:self selector:@selector(changeImages) userInfo:nil repeats:YES];
}

- (void)showItems:(NSArray<CRBannerItem *> *)subItems{
    
    _Items = [[NSArray alloc]initWithArray:subItems];
    [_metDic removeAllObjects];
    
    //初始化
    [[_scrollView.subviews copy] enumerateObjectsUsingBlock:^(UIView *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        [obj removeFromSuperview];
    }];
    [_changeTimer invalidate];
    _currentIdx = 0;
    
    if (!subItems || subItems.count == 0) {
        //没哟元素
    }else if (subItems.count == 1) {
        //只有一张图片
        CRBannerItem * item = _Items.firstObject;
        
        _scrollView.contentSize = _scrollView.frame.size;
        _pageControl.hidden = YES;
        
        UIImageView * imageV = [self getScrollItemImageViewImageURL:<#(NSURL *)#> tag:<#(NSInteger)#> callBack:<#^(void)callback#> tag:0 callBack:item.callBackBlock];
        imageV.frame =_scrollView.bounds;
        
        [_scrollView addSubview:imageV];
    }else{
        //多张图片
        _scrollView.contentSize = CGSizeMake(_scrollView.width * subItems.count, _scrollView.height);
        _pageControl.hidden = NO;
        _pageControl.numberOfPages = subItems.count;
        
        //添加Image
        __WEAKSELF__
        [_Items enumerateObjectsUsingBlock:^(XTTVScrollBannerItem *  _Nonnull item, NSUInteger idx, BOOL * _Nonnull stop) {
            __STRONGSELF__
            
            if (idx >= PageMax) {
                *stop = YES;
            }//设置最大循环个数
            
            UIImageView * imageV = [self getScrollItemImageViewImagePath:item.imagePath tag:idx callBack:item.callBackBlock];
            
            imageV.frame = CGRectMake(idx*strongSelf.width, 0, strongSelf.width, strongSelf.height);
            [strongSelf.scrollView addSubview:imageV];
        }];
        //设置内容范围偏移200
        _scrollView.contentInset = UIEdgeInsetsMake(0, _scrollView.width, 0, _scrollView.width);
        
        //添加首
        XTTVScrollBannerItem * tmpItem = _Items.lastObject;
        
        UIImageView * imageV = [self getScrollItemImageViewImagePath:tmpItem.imagePath tag:-1 callBack:tmpItem.callBackBlock];
        imageV.frame = CGRectMake(-_scrollView.width, 0, _scrollView.width, _scrollView.height);
        
        [_scrollView addSubview:imageV];
        
        //添加尾
        tmpItem = _Items.firstObject;
        
        imageV = [self getScrollItemImageViewImagePath:tmpItem.imagePath tag:-2 callBack:tmpItem.callBackBlock];
        imageV.frame = CGRectMake(_scrollView.width * subItems.count, 0, _scrollView.width, _scrollView.height);
        
        [_scrollView addSubview:imageV];
        
        if (!_changeTimer) {
            [self addTimer];
        }
        [_changeTimer fire];
    }
}


- (void)changeImages{
    if (_currentIdx >= _Items.count) {
        _currentIdx = 0;
    }
    [self.scrollView setContentOffset:CGPointMake(_currentIdx * self.width, 0) animated:YES];
    [_pageControl setCurrentPage:_currentIdx];
    _currentIdx++;
}

#pragma mark - scollview delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    if (scrollView.contentOffset.x <= -_scrollView.width) {
        scrollView.contentOffset = CGPointMake(_scrollView.width * _Items.count + scrollView.contentOffset.x, 0) ;
    }else if (scrollView.contentOffset.x >= scrollView.width * _Items.count){
        scrollView.contentOffset = CGPointMake(scrollView.contentOffset.x - (scrollView.width * _Items.count), 0);
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    _currentIdx = (scrollView.contentOffset.x + 0.5 * _scrollView.width) / _scrollView.width;
    [_pageControl setCurrentPage:_currentIdx];
}


@end
