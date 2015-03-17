//  代码地址: https://github.com/CoderMJLee/MJRefresh
//  代码地址: http://code4app.com/ios/%E5%BF%AB%E9%80%9F%E9%9B%86%E6%88%90%E4%B8%8B%E6%8B%89%E4%B8%8A%E6%8B%89%E5%88%B7%E6%96%B0/52326ce26803fabc46000000
//  UIScrollView+MJRefresh.h
//  MJRefreshExample
//
//  Created by MJ Lee on 15/3/4.
//  Copyright (c) 2015年 itcast. All rights reserved.
//  给ScrollView增加下拉刷新、上拉刷新的功能

#import <UIKit/UIKit.h>
#import "MJRefreshConst.h"

@class MJRefreshGifHeader, MJRefreshLegendHeader, MJRefreshHeader;
@class MJRefreshGifFooter, MJRefreshLegendFooter, MJRefreshFooter;

@interface UIScrollView (MJRefresh)
#pragma mark - 访问下拉刷新控件
/** 下拉刷新控件 */
@property (nonatomic, strong) MJRefreshHeader *header;
/** gif功能的下拉刷新控件 */
@property (nonatomic, readonly) MJRefreshGifHeader *gifHeader;
/** 传统的下拉刷新控件 */
@property (nonatomic, readonly) MJRefreshLegendHeader *legendHeader;

#pragma mark - 移除下拉刷新控件
/**
 * 移除下拉刷新控件
 */
- (void)removeHeader;

#pragma mark - 访问上拉刷新控件
/** 上拉刷新控件 */
@property (nonatomic, strong) MJRefreshFooter *footer;
/** gif功能的上拉刷新控件 */
@property (nonatomic, readonly) MJRefreshGifFooter *gifFooter;
/** 传统的上拉刷新控件 */
@property (nonatomic, readonly) MJRefreshLegendFooter *legendFooter;

#pragma mark - 移除上拉刷新控件
/**
 * 移除上拉刷新控件
 */
- (void)removeFooter;

@end
