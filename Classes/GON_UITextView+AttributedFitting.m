//
//  GON_UITextView+AttributedFitting.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UITextView+AttributedFitting.h"

@implementation UITextView (AttributedFitting)
#pragma mark - Static textview for view height computation (< iOS7.1)
+ (UITextView *)textView
{
    static __strong UITextView *textView = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        textView = [[UITextView alloc] init];
    });

    return textView;
}

#pragma mark - Text update
- (CGFloat)setAttributedText:(NSAttributedString*)text fitToDisplayText:(BOOL)fitting
{
	// Update text
	self.attributedText = text;

	// Update frame if needed
	if (fitting)
		return [self fitAttributedTextViewToDisplayText:aText];

	return CGRectGetHeight(self.frame);
}

- (CGFloat)setAttributedText:(NSAttributedString*)text fitWidthToDisplayText:(BOOL)fitting
{
	// Update text
	self.attributedText = text;
	
	// Update frame if needed
	if (fitting)
		return [self fitAttributedTextViewWidthToDisplayText:aText];
	
	return CGRectGetWidth(self.frame);
}

#pragma mark - Text update with constraints
- (CGFloat)setAttributedText:(NSAttributedString*)text fittingWithMaxHeight:(CGFloat)height
{
    // Update text
	self.attributedText = text;
	
	// Update frame
    return [self fitAttributedTextView:aText
                           toMaxHeight:height];
}

- (CGFloat)setAttributedText:(NSAttributedString*)text fittingWithMaxWidth:(CGFloat)width
{
    // Update text
	self.attributedText = text;
    
	// Update frame
    return [self fitAttributedTextView:aText
                            toMaxWidth:width];
}

- (CGFloat)setAttributedText:(NSAttributedString*)text fitToDisplayText:(BOOL)fitting withMaxHeight:(CGFloat)height
{
    // Update text
	self.attributedText = text;
	
	// Update frame if needed
	if (fitting)
		return [self fitAttributedTextView:aText
                               toMaxHeight:height];
    
	return CGRectGetHeight(self.frame);
    
}

- (CGFloat)setAttributedText:(NSAttributedString*)text fitWidthToDisplayText:(BOOL)fitting withMaxWidth:(CGFloat)width
{
    // Update text
	self.attributedText = text;
	
	// Update frame if needed
	if (fitting)
		return [self fitAttributedTextView:aText
                               toMaxWidth:width];
    
	return CGRectGetWidth(self.frame);
}

#pragma mark - Layout methods
- (CGFloat)fitAttributedTextViewToDisplayText:(NSAttributedString *)text
{
    return [self fitAttributedTextView:text
                           toMaxHeight:CGFLOAT_MAX];
}

- (CGFloat)fitAttributedTextViewWidthToDisplayText:(NSAttributedString *)text
{
    return [self fitAttributedTextView:text
                            toMaxWidth:CGFLOAT_MAX];
}

#pragma mark - Layout methods with constraints
- (CGFloat)fitAttributedTextView:(NSAttributedString *)text toMaxWidth:(CGFloat)maxWidth
{
    // Compute width
    CGFloat width = [self computeTextViewWidth:maxWidth forText:text];

    UPDATE_VIEW_FRAME_WIDTH(self, width);

    return width;
}

- (CGFloat)fitAttributedTextView:(NSAttributedString *)text toMaxHeight:(CGFloat)maxHeight
{
    // Compute height
    CGFloat height = [self computeTextViewHeight:maxHeight forText:text];

    UPDATE_VIEW_FRAME_HEIGHT(self, height);

    return height;
}

#pragma mark - Utils
- (CGFloat)computeTextViewHeight:(CGFloat)maxHeight forText:(NSAttributedString *)text
{
    // Update static textview content
    UITextView *textView = [[self class] textView];
    textView.attributedText = text;

    // Compute height
    return ceilf(MIN([textView sizeThatFits:CGSizeMake(CGRectGetWidth(self.frame), maxHeight)].height, maxHeight));
}

- (CGFloat)computeTextViewWidth:(CGFloat)maxWidth forText:(NSAttributedString *)text
{
    // Update static textview content
    UITextView *textView = [[self class] textView];
    textView.attributedText = text;

    // Compute width
    return ceilf(MIN([textView sizeThatFits:CGSizeMake(maxWidth, CGRectGetHeight(self.frame))].width, maxWidth));
}
@end