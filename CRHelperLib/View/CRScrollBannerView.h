//
//  CRScrollBannerView.h
//  AFNetworking
//
//  Created by 周文涛 on 2019/12/14.
//

#import <UIKit/UIKit.h>
#import "CRMedia.h"


NS_ASSUME_NONNULL_BEGIN

/**
 *@brief        内容item
 */
typedef void (^CRScrollItemTapBlock)(void);
@interface CRBannerItem : NSObject

/**
 @breif     媒体文件，暂时只支持image
 */
@property (nonatomic, strong) CRMedia * mediaItem;
@property (nonatomic, copy, nullable)CRScrollItemTapBlock tapBlock;
@property (nonatomic, strong) id content;

@end

@interface CRScrollBannerView : UIView

@property (nonatomic, strong, readonly) NSArray * Items;
@property (nonatomic, strong) UIPageControl * pageControl;
@property (nonatomic, strong) UIScrollView * scrollView;
@property (nonatomic, assign, readonly) NSInteger currentIdx;


- (void)showItems:(NSArray<CRBannerItem *> *)subItems;
- (void)timerInvalidate;

@end

NS_ASSUME_NONNULL_END
