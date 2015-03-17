//
//  MJRefresh+Deprecated.m
//  MJRefreshExample
//
//  Created by MJ Lee on 15/3/17.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "MJRefresh+Deprecated.h"
#import "UIScrollView+MJRefresh.h"
#import "MJRefreshGifHeader.h"
#import "MJRefreshLegendHeader.h"
#import "MJRefreshGifFooter.h"
#import "MJRefreshLegendFooter.h"

#pragma mark - 1.0.0版本的接口
@implementation UIScrollView(MJRefreshDeprecated_1)
#pragma mark - 下拉刷新
- (MJRefreshLegendHeader *)addLegendHeaderWithRefreshingBlock:(void (^)())block dateKey:(NSString *)dateKey
{
    MJRefreshLegendHeader *header = [self addLegendHeader];
    header.refreshingBlock = block;
    header.dateKey = dateKey;
    return header;
}

- (MJRefreshLegendHeader *)addLegendHeaderWithRefreshingTarget:(id)target refreshingAction:(SEL)action dateKey:(NSString *)dateKey
{
    MJRefreshLegendHeader *header = [self addLegendHeader];
    header.refreshingTarget = target;
    header.refreshingAction = action;
    header.dateKey = dateKey;
    return header;
}

- (MJRefreshLegendHeader *)addLegendHeaderWithRefreshingTarget:(id)target refreshingAction:(SEL)action
{
    return [self addLegendHeaderWithRefreshingTarget:target refreshingAction:action dateKey:nil];
}

- (MJRefreshLegendHeader *)addLegendHeaderWithRefreshingBlock:(void (^)())block
{
    return [self addLegendHeaderWithRefreshingBlock:block dateKey:nil];
}

- (MJRefreshLegendHeader *)addLegendHeader
{
    MJRefreshLegendHeader *header = [[MJRefreshLegendHeader alloc] init];
    self.header = header;
    return header;
}

- (MJRefreshGifHeader *)addGifHeaderWithRefreshingBlock:(void (^)())block dateKey:(NSString *)dateKey
{
    MJRefreshGifHeader *header = [self addGifHeader];
    header.refreshingBlock = block;
    header.dateKey = dateKey;
    return header;
}

- (MJRefreshGifHeader *)addGifHeaderWithRefreshingTarget:(id)target refreshingAction:(SEL)action dateKey:(NSString *)dateKey
{
    MJRefreshGifHeader *header = [self addGifHeader];
    header.refreshingTarget = target;
    header.refreshingAction = action;
    header.dateKey = dateKey;
    return header;
}

- (MJRefreshGifHeader *)addGifHeaderWithRefreshingBlock:(void (^)())block
{
    return [self addGifHeaderWithRefreshingBlock:block dateKey:nil];
}

- (MJRefreshGifHeader *)addGifHeaderWithRefreshingTarget:(id)target refreshingAction:(SEL)action
{
    return [self addGifHeaderWithRefreshingTarget:target refreshingAction:action dateKey:nil];
}

- (MJRefreshGifHeader *)addGifHeader
{
    MJRefreshGifHeader *header = [[MJRefreshGifHeader alloc] init];
    self.header = header;
    return header;
}

#pragma mark - 上拉刷新
- (MJRefreshLegendFooter *)addLegendFooterWithRefreshingBlock:(void (^)())block
{
    MJRefreshLegendFooter *footer = [self addLegendFooter];
    footer.refreshingBlock = block;
    return footer;
}

- (MJRefreshLegendFooter *)addLegendFooterWithRefreshingTarget:(id)target refreshingAction:(SEL)action
{
    MJRefreshLegendFooter *footer = [self addLegendFooter];
    footer.refreshingTarget = target;
    footer.refreshingAction = action;
    return footer;
}

- (MJRefreshLegendFooter *)addLegendFooter
{
    MJRefreshLegendFooter *footer = [[MJRefreshLegendFooter alloc] init];
    self.footer = footer;
    return footer;
}

- (MJRefreshGifFooter *)addGifFooterWithRefreshingBlock:(void (^)())block
{
    MJRefreshGifFooter *footer = [self addGifFooter];
    footer.refreshingBlock = block;
    return footer;
}

- (MJRefreshGifFooter *)addGifFooterWithRefreshingTarget:(id)target refreshingAction:(SEL)action
{
    MJRefreshGifFooter *footer = [self addGifFooter];
    footer.refreshingTarget = target;
    footer.refreshingAction = action;
    return footer;
}

- (MJRefreshGifFooter *)addGifFooter
{
    MJRefreshGifFooter *footer = [[MJRefreshGifFooter alloc] init];
    self.footer = footer;
    return footer;
}
@end

#pragma mark - 0.0.0版本的接口
@implementation UIScrollView(MJRefreshDeprecated_0)
#pragma mark - 下拉刷新
/**
 *  添加一个下拉刷新头部控件
 *
 *  @param callback 回调
 */
- (void)addHeaderWithCallback:(void (^)())callback
{
    [self addLegendFooterWithRefreshingBlock:callback];
}

/**
 *  添加一个下拉刷新头部控件
 *
 *  @param callback 回调
 *  @param dateKey 刷新时间保存的key值
 */
- (void)addHeaderWithCallback:(void (^)())callback dateKey:(NSString*)dateKey
{
    [self addLegendHeaderWithRefreshingBlock:callback dateKey:dateKey];
}

/**
 *  添加一个下拉刷新头部控件
 *
 *  @param target 目标
 *  @param action 回调方法
 */
- (void)addHeaderWithTarget:(id)target action:(SEL)action
{
    [self addLegendHeaderWithRefreshingTarget:target refreshingAction:action];
}

/**
 *  添加一个下拉刷新头部控件
 *
 *  @param target 目标
 *  @param action 回调方法
 *  @param dateKey 刷新时间保存的key值
 */
- (void)addHeaderWithTarget:(id)target action:(SEL)action dateKey:(NSString*)dateKey
{
    [self addLegendHeaderWithRefreshingTarget:target refreshingAction:action dateKey:dateKey];
}

/**
 *  主动让下拉刷新头部控件进入刷新状态
 */
- (void)headerBeginRefreshing
{
    [self.header beginRefreshing];
}

/**
 *  让下拉刷新头部控件停止刷新状态
 */
- (void)headerEndRefreshing
{
    [self.header endRefreshing];
}

/**
 *  下拉刷新头部控件的可见性
 */
- (void)setHeaderHidden:(BOOL)headerHidden
{
    self.header.hidden = headerHidden;
}

- (BOOL)isHeaderHidden
{
    return self.header.isHidden;
}

/**
 *  是否正在下拉刷新
 */
- (BOOL)isHeaderRefreshing
{
    return self.header.isRefreshing;
}

#pragma mark - 上拉刷新
/**
 *  添加一个上拉刷新尾部控件
 *
 *  @param callback 回调
 */
- (void)addFooterWithCallback:(void (^)())callback
{
    [self addLegendFooterWithRefreshingBlock:callback];
}

/**
 *  添加一个上拉刷新尾部控件
 *
 *  @param target 目标
 *  @param action 回调方法
 */
- (void)addFooterWithTarget:(id)target action:(SEL)action
{
    [self addLegendFooterWithRefreshingTarget:target refreshingAction:action];
}

/**
 *  主动让上拉刷新尾部控件进入刷新状态
 */
- (void)footerBeginRefreshing
{
    [self.footer beginRefreshing];
}

/**
 *  让上拉刷新尾部控件停止刷新状态
 */
- (void)footerEndRefreshing
{
    [self.footer endRefreshing];
}

/**
 *  上拉刷新头部控件的可见性
 */
- (void)setFooterHidden:(BOOL)footerHidden
{
    self.footer.hidden = footerHidden;
}

- (BOOL)isFooterHidden
{
    return self.footer.isHidden;
}

/**
 *  是否正在上拉刷新
 */
- (BOOL)isFooterRefreshing
{
    return self.footer.isRefreshing;
}

@end