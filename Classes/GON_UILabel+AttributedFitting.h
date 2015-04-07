//
//  GON_UILabel+AttributedFitting.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface UILabel(AttributedFitting)
/* Update label text and allow to fit its frame in order to display all text on multiples lines, keeping current width.
 * This method return new label height */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitToDisplayText:(BOOL)fitting;

/* Update label frame in order to display all text on multiples lines, keeping current width.
 * This method return new label height */
- (CGFloat)fitLabelToDisplayAttributedText;

/* Update label text and allows to fit its frame in order to display all text on a single lines.
 * This method return new label width */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitWidthToDisplayText:(BOOL)fitting;

/* Update label text and allows to fit its frame in order to display as many text as possible constrained by given height.
 * This method return new label height */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitToDisplayText:(BOOL)fitting withMaxHeight:(CGFloat)height;

/* Update label text and allows to fit its frame in order to display as many text as possible constrained by given width.
 * This method return new label width */
- (CGFloat)setAttributedText:(NSAttributedString*)text fitWidthToDisplayText:(BOOL)fitting withMaxWidth:(CGFloat)width;

/* Update label text and allows to fit its frame in order to display as many text as possible constrained by given height.
 * This method return new label height */
- (CGFloat)setAttributedText:(NSAttributedString*)text fittingWithMaxHeight:(CGFloat)height;

/* Update label text and allows to fit its frame in order to display as many text as possible constrained by given width.
 * This method return new label width */
- (CGFloat)setAttributedText:(NSAttributedString*)text fittingWithMaxWidth:(CGFloat)width;

/* Update label frame in order to display all text on a single line.
 * This method return new label width */
- (CGFloat)fitLabelWidthToDisplayAttributedText;

/* Update label frame in order to display as many text as possible on a single line, constrained by given width
 * If displayed text is less larger than label frame, label frame will be shrinked.
 * This method return new label width */
- (CGFloat)fitAttributedLabelToMaxWidth:(CGFloat)width;

/* Update label frame in order to display as many text as possible on multiple lines, constrained by given height
 * If displayed text is less larger than label frame, label frame will be shrinked.
 * This method return new label height */
- (CGFloat)fitAttributedLabelToMaxHeight:(CGFloat)height;

@end
