//
//  GON_UIScrollView+Fitting.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//
@interface UIScrollView (Fitting)
/* Center content vertically by adding insets 
 * If content is larger than scrollview, nothing is done
 */
- (void)addInsetsToCenterVertically;

/* Center content horizontally by adding insets
 * If content is higher than scrollview, nothing is done
 */
- (void)addInsetsToCenterHorizontally;

/* Center content by adding insets */
- (void)addInsetsToCenter;
@end
