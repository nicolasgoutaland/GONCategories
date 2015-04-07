//
//  GON_UILabel+AttributedFitting.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UILabel+AttributedFitting.h"


@implementation UILabel(AttributedFitting)
#pragma mark - Text update
- (CGFloat)setAttributedText:(NSAttributedString*)text fitToDisplayText:(BOOL)fitting
{
	// Update text
	self.attributedText = text;
	
	// Update frame if needed
	if (fitting)
		return [self fitLabelToDisplayAttributedText];
	
	return CGRectGetHeight(self.frame);
}

- (CGFloat)setAttributedText:(NSAttributedString*)text fitWidthToDisplayText:(BOOL)fitting
{
	// Update text
	self.attributedText = text;
	
	// Update frame if needed
	if (fitting)
		return [self fitLabelWidthToDisplayAttributedText];

	return CGRectGetWidth(self.frame);
}

#pragma mark - Text update with constraints
- (CGFloat)setAttributedText:(NSAttributedString*)text fittingWithMaxHeight:(CGFloat)height
{
    // Update text
	self.attributedText = text;
	
	// Update frame
    return [self fitAttributedLabelToMaxHeight:height];
}

- (CGFloat)setAttributedText:(NSAttributedString*)text fittingWithMaxWidth:(CGFloat)width
{
    // Update text
	self.attributedText = text;

	// Update frame
    return [self fitAttributedLabelToMaxWidth:width];
}

- (CGFloat)setAttributedText:(NSAttributedString*)text fitToDisplayText:(BOOL)fitting withMaxHeight:(CGFloat)height
{
    // Update text
	self.attributedText = text;
	
	// Update frame if needed
	if (fitting)
		return [self fitAttributedLabelToMaxHeight:height];

	return CGRectGetHeight(self.frame);

}

- (CGFloat)setAttributedText:(NSAttributedString*)text fitWidthToDisplayText:(BOOL)fitting withMaxWidth:(CGFloat)width
{
    // Update text
	self.attributedText = text;
	
	// Update frame if needed
	if (fitting)
		return [self fitAttributedLabelToMaxWidth:width];

	return CGRectGetWidth(self.frame);
}


#pragma mark - Layout methods
- (CGFloat)fitLabelToDisplayAttributedText
{
    return [self fitAttributedLabelToMaxHeight:CGFLOAT_MAX];
}

- (CGFloat)fitLabelWidthToDisplayAttributedText
{
    return [self fitAttributedLabelToMaxWidth:CGFLOAT_MAX];
}

#pragma mark - Layout methods with constraints
- (CGFloat)fitAttributedLabelToMaxWidth:(CGFloat)maxWidth
{
 	if (!self.attributedText.length)
		return 0;
	
	// Disable multilines display
	self.numberOfLines = 1;

	// Define new bounds for the description label
	CGRect frame = self.frame;
    frame.size.width = ceil(MIN([self sizeThatFits:CGSizeMake(maxWidth, CGRectGetHeight(frame))].width, maxWidth));

	// Update frame
    self.frame = frame;

	return CGRectGetWidth(frame);
}

- (CGFloat)fitAttributedLabelToMaxHeight:(CGFloat)maxHeight
{
    if (!self.attributedText.length)
		return 0 ;
    
	// Enable multilines display
	self.numberOfLines = 0;
    
	// Define new bounds for the description label
	CGRect frame = self.frame;
    frame.size.height = ceil(MIN([self sizeThatFits:CGSizeMake(CGRectGetWidth(frame), maxHeight)].height, maxHeight));

	// Update frame
	self.frame = frame;

	return CGRectGetHeight(frame);
}

@end
