//
//  GON_UITextView+AttributedFitting.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface UITextView (AttributedFitting)
/* Update textview text and allow to fit its frame in order to display all text on multiples lines, keeping current width.
 * This method return new textview height */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitToDisplayText:(BOOL)fitting;

/* Update textview text and allows to fit its frame in order to display all text on a single lines.
 * This method return new textview width */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitWidthToDisplayText:(BOOL)fitting;

/* Update textview text and allows to fit its frame in order to display as many text as possible constrained by given height.
 * This method return new textview height */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitToDisplayText:(BOOL)fitting withMaxHeight:(CGFloat)height;

/* Update textview text and allows to fit its frame in order to display as many text as possible constrained by given width.
 * This method return new textview width */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitWidthToDisplayText:(BOOL)fitting withMaxWidth:(CGFloat)width;

/* Update textview text and allows to fit its frame in order to display as many text as possible constrained by given height.
 * This method return new textview height */
- (CGFloat)setAttributedText:(NSAttributedString*)text fittingWithMaxHeight:(CGFloat)height;

/* Update textview text and allows to fit its frame in order to display as many text as possible constrained by given width.
 * This method return new textview width */
- (CGFloat)setAttributedText:(NSAttributedString*)text fittingWithMaxWidth:(CGFloat)width;

// Methods unsupported for now. Since iOS7, if TextView text cannot be selected, nor edited, attributedText property return always nil !
/* Update textview frame in order to display all text on multiples lines, keeping current width.
 * This method return new textview height */
// - (CGFloat)fitAttributedTextViewToDisplayText;

/* Update textview frame in order to display all text on a single line.
 * This method return new textview width */
// - (CGFloat)fitAttributedTextViewWidthToDisplayText;

/* Update textview frame in order to display as many text as possible on a single line, constrained by given width
 * If displayed text is less larger than textview frame, textview frame will be shrinked.
 * This method return new textview width */
// - (CGFloat)fitAttributedTextViewToMaxWidth:(CGFloat)width;

/* Update textview frame in order to display as many text as possible on multiple lines, constrained by given height
 * If displayed text is less larger than textview frame, textview frame will be shrinked.
 * This method return new textview height */
// - (CGFloat)fitAttributedTextViewToMaxHeight:(CGFloat)height;

@end
