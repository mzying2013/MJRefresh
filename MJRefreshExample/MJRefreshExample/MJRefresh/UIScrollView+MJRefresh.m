//  代码地址: https://github.com/CoderMJLee/MJRefresh
//  代码地址: http://code4app.com/ios/%E5%BF%AB%E9%80%9F%E9%9B%86%E6%88%90%E4%B8%8B%E6%8B%89%E4%B8%8A%E6%8B%89%E5%88%B7%E6%96%B0/52326ce26803fabc46000000
//  UIScrollView+MJRefresh.m
//  MJRefreshExample
//
//  Created by MJ Lee on 15/3/4.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "UIScrollView+MJRefresh.h"
#import "MJRefreshGifHeader.h"
#import "MJRefreshLegendHeader.h"
#import "MJRefreshGifFooter.h"
#import "MJRefreshLegendFooter.h"
#import <objc/runtime.h>

@implementation UIScrollView (MJRefresh)

- (void)removeHeader
{
    self.header = nil;
}

- (void)removeFooter
{
    self.footer = nil;
}

#pragma mark - Property Methods
#pragma mark gifHeader
- (MJRefreshGifHeader *)gifHeader
{
    if ([self.header isKindOfClass:[MJRefreshGifHeader class]]) {
        return (MJRefreshGifHeader *)self.header;
    }
    
    return nil;
}

#pragma mark legendHeader
- (MJRefreshLegendHeader *)legendHeader
{
    if ([self.header isKindOfClass:[MJRefreshLegendHeader class]]) {
        return (MJRefreshLegendHeader *)self.header;
    }
    
    return nil;
}

#pragma mark header
static char MJRefreshHeaderKey;
- (void)setHeader:(MJRefreshHeader *)header
{
    if (header != self.header) {
        [self.header removeFromSuperview];
        
        [self willChangeValueForKey:@"header"];
        objc_setAssociatedObject(self, &MJRefreshHeaderKey,
                                 header,
                                 OBJC_ASSOCIATION_ASSIGN);
        [self didChangeValueForKey:@"header"];
        
        [self addSubview:header];
    }
}

- (MJRefreshHeader *)header
{
    return objc_getAssociatedObject(self, &MJRefreshHeaderKey);
}

#pragma mark gifFooter
- (MJRefreshGifFooter *)gifFooter
{
    if ([self.footer isKindOfClass:[MJRefreshGifFooter class]]) {
        return (MJRefreshGifFooter *)self.footer;
    }
    return nil;
}

#pragma mark legendFooter
- (MJRefreshLegendFooter *)legendFooter
{
    if ([self.footer isKindOfClass:[MJRefreshLegendFooter class]]) {
        return (MJRefreshLegendFooter *)self.footer;
    }
    return nil;
}

#pragma mark footer
static char MJRefreshFooterKey;
- (void)setFooter:(MJRefreshFooter *)footer
{
    if (footer != self.footer) {
        [self.footer removeFromSuperview];
        
        [self willChangeValueForKey:@"footer"];
        objc_setAssociatedObject(self, &MJRefreshFooterKey,
                                 footer,
                                 OBJC_ASSOCIATION_ASSIGN);
        [self didChangeValueForKey:@"footer"];
        
        [self addSubview:footer];
    }
}

- (MJRefreshFooter *)footer
{
    return objc_getAssociatedObject(self, &MJRefreshFooterKey);
}

#pragma mark - swizzle
+ (void)load
{
    Method method1 = class_getInstanceMethod([self class], NSSelectorFromString(@"dealloc"));
    Method method2 = class_getInstanceMethod([self class], @selector(deallocSwizzle));
    method_exchangeImplementations(method1, method2);
}

- (void)deallocSwizzle
{
    [self removeFooter];
    [self removeHeader];
    
    [self deallocSwizzle];
}

@end
