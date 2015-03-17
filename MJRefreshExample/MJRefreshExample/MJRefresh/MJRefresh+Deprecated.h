//
//  MJRefresh+Deprecated.h
//  MJRefreshExample
//
//  Created by MJ Lee on 15/3/17.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MJRefreshConst.h"

@class MJRefreshGifHeader, MJRefreshLegendHeader, MJRefreshHeader;
@class MJRefreshGifFooter, MJRefreshLegendFooter, MJRefreshFooter;

//_____________________________________________________________________________________________
// Deprecated 废弃的接口

#pragma mark - 1.0.0版本的接口
@interface UIScrollView(MJRefreshDeprecated_1)
#pragma mark - 添加下拉刷新控件
/**
 * 添加一个传统的下拉刷新控件
 *
 * @param block 进入刷新状态就会自动调用这个block
 */
- (MJRefreshLegendHeader *)addLegendHeaderWithRefreshingBlock:(void (^)())block MJDeprecated("Use self.tableView.header to set header.");
/**
 * 添加一个传统的下拉刷新控件
 *
 * @param block     进入刷新状态就会自动调用这个block
 * @param dateKey   用来记录刷新时间的key
 */
- (MJRefreshLegendHeader *)addLegendHeaderWithRefreshingBlock:(void (^)())block dateKey:(NSString *)dateKey MJDeprecated("Use self.tableView.header to set header.");
/**
 * 添加一个传统的下拉刷新控件
 *
 * @param target 进入刷新状态就会自动调用target对象的action方法
 * @param action 进入刷新状态就会自动调用target对象的action方法
 */
- (MJRefreshLegendHeader *)addLegendHeaderWithRefreshingTarget:(id)target refreshingAction:(SEL)action MJDeprecated("Use self.tableView.header to set header.");
/**
 * 添加一个传统的下拉刷新控件
 *
 * @param target    进入刷新状态就会自动调用target对象的action方法
 * @param action    进入刷新状态就会自动调用target对象的action方法
 * @param dateKey   用来记录刷新时间的key
 */
- (MJRefreshLegendHeader *)addLegendHeaderWithRefreshingTarget:(id)target refreshingAction:(SEL)action dateKey:(NSString *)dateKey MJDeprecated("Use self.tableView.header to set header.");
/**
 * 添加一个gif图片的下拉刷新控件
 *
 * @param block 进入刷新状态就会自动调用这个block
 */
- (MJRefreshGifHeader *)addGifHeaderWithRefreshingBlock:(void (^)())block MJDeprecated("Use self.tableView.header to set header.");
/**
 * 添加一个gif图片的下拉刷新控件
 *
 * @param block     进入刷新状态就会自动调用这个block
 * @param dateKey   用来记录刷新时间的key
 */
- (MJRefreshGifHeader *)addGifHeaderWithRefreshingBlock:(void (^)())block dateKey:(NSString *)dateKey MJDeprecated("Use self.tableView.header to set header.");
/**
 * 添加一个gif图片的下拉刷新控件
 *
 * @param target 进入刷新状态就会自动调用target对象的action方法
 * @param action 进入刷新状态就会自动调用target对象的action方法
 */
- (MJRefreshGifHeader *)addGifHeaderWithRefreshingTarget:(id)target refreshingAction:(SEL)action MJDeprecated("Use self.tableView.header to set header.");
/**
 * 添加一个gif图片的下拉刷新控件
 *
 * @param target    进入刷新状态就会自动调用target对象的action方法
 * @param action    进入刷新状态就会自动调用target对象的action方法
 * @param dateKey   用来记录刷新时间的key
 */
- (MJRefreshGifHeader *)addGifHeaderWithRefreshingTarget:(id)target refreshingAction:(SEL)action dateKey:(NSString *)dateKey MJDeprecated("Use self.tableView.header to set header.");

#pragma mark - 添加上拉刷新控件
/**
 * 添加一个传统的上拉刷新控件
 *
 * @param block 进入刷新状态就会自动调用这个block
 */
- (MJRefreshLegendFooter *)addLegendFooterWithRefreshingBlock:(void (^)())block MJDeprecated("Use self.tableView.footer to set footer.");
/**
 * 添加一个传统的上拉刷新控件
 *
 * @param target 进入刷新状态就会自动调用target对象的action方法
 * @param action 进入刷新状态就会自动调用target对象的action方法
 */
- (MJRefreshLegendFooter *)addLegendFooterWithRefreshingTarget:(id)target refreshingAction:(SEL)action MJDeprecated("Use self.tableView.footer to set footer.");
/**
 * 添加一个gif图片的上拉刷新控件
 *
 * @param block 进入刷新状态就会自动调用这个block
 */
- (MJRefreshGifFooter *)addGifFooterWithRefreshingBlock:(void (^)())block MJDeprecated("Use self.tableView.footer to set footer.");
/**
 * 添加一个gif图片的上拉刷新控件
 *
 * @param target 进入刷新状态就会自动调用target对象的action方法
 * @param action 进入刷新状态就会自动调用target对象的action方法
 */
- (MJRefreshGifFooter *)addGifFooterWithRefreshingTarget:(id)target refreshingAction:(SEL)action MJDeprecated("Use self.tableView.footer to set footer.");
@end

#pragma mark - 0.0.0版本的接口
@interface UIScrollView(MJRefreshDeprecated_0)
#pragma mark - 下拉刷新
/**
 *  添加一个下拉刷新头部控件
 *
 *  @param callback 回调
 */
- (void)addHeaderWithCallback:(void (^)())callback MJDeprecated("Use self.tableView.header to set header.");

/**
 *  添加一个下拉刷新头部控件
 *
 *  @param callback 回调
 *  @param dateKey 刷新时间保存的key值
 */
- (void)addHeaderWithCallback:(void (^)())callback dateKey:(NSString*)dateKey MJDeprecated("Use self.tableView.header to set header.");

/**
 *  添加一个下拉刷新头部控件
 *
 *  @param target 目标
 *  @param action 回调方法
 */
- (void)addHeaderWithTarget:(id)target action:(SEL)action MJDeprecated("Use self.tableView.header to set header.");

/**
 *  添加一个下拉刷新头部控件
 *
 *  @param target 目标
 *  @param action 回调方法
 *  @param dateKey 刷新时间保存的key值
 */
- (void)addHeaderWithTarget:(id)target action:(SEL)action dateKey:(NSString*)dateKey MJDeprecated("Use self.tableView.header to set header.");

/**
 *  主动让下拉刷新头部控件进入刷新状态
 */
- (void)headerBeginRefreshing MJDeprecated("Use [self.tableView.header beginRefreshing] instead.");

/**
 *  让下拉刷新头部控件停止刷新状态
 */
- (void)headerEndRefreshing MJDeprecated("Use [self.tableView.header endRefreshing] instead.");

/**
 *  下拉刷新头部控件的可见性
 */
@property (nonatomic, assign, getter = isHeaderHidden) BOOL headerHidden MJDeprecated("Use self.tableView.header.hidden to set visiablity.");

/**
 *  是否正在下拉刷新
 */
@property (nonatomic, assign, readonly, getter = isHeaderRefreshing) BOOL headerRefreshing MJDeprecated("Use self.tableView.header.isRefreshing instead.");

#pragma mark - 上拉刷新
/**
 *  添加一个上拉刷新尾部控件
 *
 *  @param callback 回调
 */
- (void)addFooterWithCallback:(void (^)())callback MJDeprecated("Use self.tableView.footer to set footer.");

/**
 *  添加一个上拉刷新尾部控件
 *
 *  @param target 目标
 *  @param action 回调方法
 */
- (void)addFooterWithTarget:(id)target action:(SEL)action MJDeprecated("Use self.tableView.footer to set footer.");

/**
 *  主动让上拉刷新尾部控件进入刷新状态
 */
- (void)footerBeginRefreshing MJDeprecated("Use [self.tableView.footer beginRefreshing] instead.");

/**
 *  让上拉刷新尾部控件停止刷新状态
 */
- (void)footerEndRefreshing MJDeprecated("Use [self.tableView.footer endRefreshing] instead.");

/**
 *  上拉刷新头部控件的可见性
 */
@property (nonatomic, assign, getter = isFooterHidden) BOOL footerHidden MJDeprecated("Use self.tableView.footer.hidden to set visiablity.");

/**
 *  是否正在上拉刷新
 */
@property (nonatomic, assign, readonly, getter = isFooterRefreshing) BOOL footerRefreshing MJDeprecated("Use self.tableView.footer.isRefreshing instead.");
@end