//
//  GON_UIScrollView+Fitting.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UIScrollView+Fitting.h"

@interface UIScrollView ()
@end

@implementation UIScrollView (Fitting)
#pragma mark - Fitting
- (void)addInsetsToCenterVertically
{
    // Extract dimensions
    CGFloat contentHeight = self.contentSize.height;
    CGFloat height = CGRectGetHeight(self.frame);

    // Compute margin
    CGFloat margin = 0;
    if (contentHeight < height)
        margin = ceil((height - contentHeight) / 2.0);

    // Apply marging to insets
    UIEdgeInsets insets = self.contentInset;
    insets.top = margin;
    self.contentInset = insets;
}

- (void)addInsetsToCenterHorizontally
{
    // Extract dimensions
    CGFloat contentWidth = self.contentSize.width;
    CGFloat width = CGRectGetWidth(self.frame);
    
    // Compute margin
    CGFloat margin = 0;
    if (contentWidth < width)
        margin = ceil((width - contentWidth) / 2.0);

    // Apply marging to insets
    UIEdgeInsets insets = self.contentInset;
    insets.left = margin;
    self.contentInset = insets;
}

- (void)addInsetsToCenter
{
    [self addInsetsToCenterHorizontally];
    [self addInsetsToCenterVertically];
}

@end