//
//  GON_UIView+Frame.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UIView+Frame.h"

@implementation UIView (Frame)
#pragma mark - Frame
- (void)updateFrameOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin.x = origin.x;
    frame.origin.y = origin.y;
    self.frame = frame;
}

- (void)updateFrameSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size.width = size.width;
    frame.size.height = size.height;
    self.frame = frame;
}

- (void)updateFrameX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)updateFrameY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (void)updateCenterX:(CGFloat)x
{
    CGPoint center = self.center;
    center.x = x;
    self.center = center;
}

- (void)updateCenterY:(CGFloat)y
{
    CGPoint center = self.center;
    center.y = y;
    self.center = center;
}

- (void)updateFrameWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)updateFrameHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)addFrameX:(CGFloat)incX
{
    CGRect frame = self.frame;
    frame.origin.x += incX;
    self.frame = frame;
}

- (void)addFrameY:(CGFloat)incY
{
    CGRect frame = self.frame;
    frame.origin.y += incY;
    self.frame = frame;
}

- (void)addFrameWidth:(CGFloat)incWidth
{
    CGRect frame = self.frame;
    frame.size.width += incWidth;
    self.frame = frame;
}

- (void)addFrameHeight:(CGFloat)incHeight
{
    CGRect frame = self.frame;
    frame.size.height += incHeight;
    self.frame = frame;
}
@end