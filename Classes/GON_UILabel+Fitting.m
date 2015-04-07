//
//  GON_UILabel+Fitting.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UILabel+Fitting.h"


@implementation UILabel(Fitting)
#pragma mark - Text update
- (CGFloat)setText:(NSString*)text fitToDisplayText:(BOOL)fitting
{
	// Update text
	self.text = text;
	
	// Update frame if needed
	if (fitting)
		return [self fitLabelToDisplayText];

	return CGRectGetHeight(self.frame);
}

- (CGFloat)setText:(NSString*)text fitWidthToDisplayText:(BOOL)fitting
{
	// Update text
	self.text = text;
	
	// Update frame if needed
	if (fitting)
		return [self fitLabelWidthToDisplayText];
	
	return CGRectGetWidth(self.frame);
}

#pragma mark - Text update with constraints
- (CGFloat)setText:(NSString*)text fittingWithMaxHeight:(CGFloat)height
{
    // Update text
	self.text = text;
	
	// Update frame
    return [self fitLabelToMaxHeight:height];
}

- (CGFloat)setText:(NSString*)aText fittingWithMaxWidth:(CGFloat)width
{
    // Update text
	self.text = aText;

	// Update frame
    return [self fitLabelToMaxWidth:width];
}

- (CGFloat)setText:(NSString*)text fitToDisplayText:(BOOL)fitting withMaxHeight:(CGFloat)height
{
    // Update text
	self.text = text;
	
	// Update frame if needed
	if (fitting)
		return [self fitLabelToMaxHeight:height];

	return CGRectGetHeight(self.frame);

}

- (CGFloat)setText:(NSString*)text fitWidthToDisplayText:(BOOL)fitting withMaxWidth:(CGFloat)width
{
    // Update text
	self.text = text;
	
	// Update frame if needed
	if (fitting)
		return [self fitLabelToMaxWidth:width];

	return CGRectGetWidth(self.frame);
}

#pragma mark - Layout methods
- (CGFloat)fitLabelToDisplayText
{
    return [self fitLabelToMaxHeight:CGFLOAT_MAX];
}

- (CGFloat)fitLabelWidthToDisplayText
{
    return [self fitLabelToMaxWidth:CGFLOAT_MAX];
}

#pragma mark - Layout methods with constraints
- (CGFloat)fitLabelToMaxWidth:(CGFloat)width
{
 	if (!self.text)
		return 0;
	
	// Disable multilines display
	self.numberOfLines = 1;

	// Define new bounds for the description label
	CGRect frame = self.frame;
    
    CGSize size = [self.text boundingRectWithSize:CGSizeMake(width, frame.size.height)
                                          options:(NSStringDrawingUsesFontLeading|NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin)
                                       attributes:@{NSFontAttributeName: self.font}
                                          context:NULL].size;

    // IOS6 implementation
/*	
    CGSize size = [self.text sizeWithFont:self.font
						constrainedToSize:CGSizeMake(width, frame.size.height)
							lineBreakMode:self.lineBreakMode];
*/
    
    frame.size.width = MIN(ceil(size.width), width);
	self.frame = frame;

	return CGRectGetWidth(frame);
}

- (CGFloat)fitLabelToMaxHeight:(CGFloat)height
{
    if (!self.text)
		return 0 ;
    
	// Enable multilines display
	self.numberOfLines = 0;
    
	// Define new bounds for the description label
	CGRect aFrame = self.frame;

    // IOS6 implementation
    
/*
	CGSize size = [self.text sizeWithFont:self.font
 constrainedToSize:CGSizeMake(aFrame.size.width, height)
 lineBreakMode:self.lineBreakMode];
*/

    CGSize size = [self.text boundingRectWithSize:CGSizeMake(aFrame.size.width, height)
                                          options:(NSStringDrawingUsesFontLeading|NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin)
                                       attributes:@{NSFontAttributeName: self.font}
                                          context:NULL].size;

	aFrame.size.height = MIN(ceil(size.height), height);
	self.frame = aFrame;
	
	return CGRectGetHeight(aFrame);
}

@end
