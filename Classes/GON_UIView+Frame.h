//
//  GON_UIView+Frame.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface UIView (Frame)
/* Update view frame origin */
- (void)updateFrameOrigin:(CGPoint)origin;

/* Update view frame size */
- (void)updateFrameSize:(CGSize)size;

/* Update view frame origin X */
- (void)updateFrameX:(CGFloat)x;

/* Update view frame origin Y */
- (void)updateFrameY:(CGFloat)y;

/* Update view center X */
- (void)updateCenterX:(CGFloat)x;

/* Update view center Y */
- (void)updateCenterY:(CGFloat)y;

/* Update view frame size width */
- (void)updateFrameWidth:(CGFloat)width;

/* Update view frame size height */
- (void)updateFrameHeight:(CGFloat)height;

/* Add incX to view frame origin X */
- (void)addFrameX:(CGFloat)incX;

/* Add incY to view frame origin X */
- (void)addFrameY:(CGFloat)incY;

/* Add incWidth to view frame origin X */
- (void)addFrameWidth:(CGFloat)incWidth;

/* Add incHeight to view frame origin X */
- (void)addFrameHeight:(CGFloat)incHeight;
@end
