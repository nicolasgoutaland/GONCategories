//
//  GON_UIView+Bounds.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UIView+Bounds.h"

@implementation UIView (Bounds)
#pragma mark - Bounds
- (void)updateBoundsX:(CGFloat)x
{
    CGRect bounds = self.bounds;
    bounds.origin.x = x;
    self.bounds = bounds;
}

- (void)updateBoundsY:(CGFloat)y
{
    CGRect bounds = self.bounds;
    bounds.origin.y = y;
    self.bounds = bounds;
}

- (void)updateBoundsWidth:(CGFloat)width
{
    CGRect bounds = self.bounds;
    bounds.size.width = width;
    self.bounds = bounds;
}

- (void)updateBoundsHeight:(CGFloat)height
{
    CGRect bounds = self.bounds;
    bounds.size.height = height;
    self.bounds = bounds;
}

- (void)addBoundsX:(CGFloat)incX
{
    CGRect bounds = self.bounds;
    bounds.origin.x += incX;
    self.bounds = bounds;
}

- (void)addBoundsY:(CGFloat)incY
{
    CGRect bounds = self.bounds;
    bounds.origin.y += incY;
    self.bounds = bounds;
}

- (void)addBoundsWidth:(CGFloat)incWidth
{
    CGRect bounds = self.bounds;
    bounds.size.width += incWidth;
    self.bounds = bounds;
}

- (void)addBoundsHeight:(CGFloat)incHeight
{
    CGRect bounds = self.bounds;
    bounds.size.height += incHeight;
    self.bounds = bounds;
}
@end