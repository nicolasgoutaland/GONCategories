//
//  GON_UIView+Bounds.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//
@interface UIView (Bounds)
/* Update view bounds origin X */
- (void)updateBoundsX:(CGFloat)x;

/* Update view bounds origin Y */
- (void)updateBoundsY:(CGFloat)y;

/* Update view bounds size width */
- (void)updateBoundsWidth:(CGFloat)width;

/* Update view bounds size height */
- (void)updateBoundsHeight:(CGFloat)height;

/* Add incX to view bounds origin X */
- (void)addBoundsX:(CGFloat)incX;

/* Add incY to view bounds origin X */
- (void)addBoundsY:(CGFloat)incY;

/* Add incWidth to view bounds origin X */
- (void)addBoundsWidth:(CGFloat)incWidth;

/* Add incHeight to view bounds origin X */
- (void)addBoundsHeight:(CGFloat)incHeight;
@end
