//
//  GON_UIView+Fitting.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UIView+Fitting.h"

@implementation UIView(Fitting)
#pragma mark - Fitting
- (CGRect)centerInSuperview
{
	[self centerHorizontallyInSuperview];

	return [self centerVerticallyInSuperview];
}

- (CGRect)centerHorizontallyInSuperview
{
	if (! self.superview)
		return CGRectNull;
	
	CGRect currentFrame = self.frame;
	currentFrame.origin.x = (int)(CGRectGetWidth(self.superview.bounds) - CGRectGetWidth(currentFrame)) / 2;
	
	self.frame = currentFrame;

	return currentFrame;
}

- (CGRect)centerVerticallyInSuperview
{
	if (! self.superview)
		return CGRectNull;
	
	CGRect currentFrame = self.frame;
	currentFrame.origin.y = (int)(CGRectGetHeight(self.superview.bounds) - CGRectGetHeight(currentFrame)) / 2;
	
	self.frame = currentFrame;
    
	return currentFrame;
}

- (CGRect)fillInSuperview
{
	if (! self.superview)
		return CGRectNull;

	self.frame = self.superview.bounds;

    return self.frame;
}

- (CGRect)fillInSuperviewWidth
{
	if (! self.superview)
		return CGRectNull;
    
	CGRect currentFrame = self.frame;
	currentFrame.size.width = CGRectGetWidth(self.superview.frame);
	self.frame = currentFrame;

	return self.frame;
}

- (CGRect)fillInSuperviewHeight
{
	if (! self.superview)
		return CGRectNull;
    
	CGRect currentFrame = self.frame;
	currentFrame.size.height = CGRectGetHeight(self.superview.frame);
	self.frame = currentFrame;

	return self.frame;
}

@end
