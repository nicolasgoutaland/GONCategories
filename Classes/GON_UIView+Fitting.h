//
//  GON_UIView+Fitting.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface UIView(Fitting)

/* Update view frame, centering it vertically and horizontally compared to its superview
 */
- (CGRect)centerInSuperview;

/* Update view frame, centering it horizontally compared to its superview
 */
- (CGRect)centerHorizontallyInSuperview;

/* Update view frame, centering it vertically compared to its superview
 */
- (CGRect)centerVerticallyInSuperview;


/* Change view frame to fill its superview frame :
 */
- (CGRect)fillInSuperview;

/* Change view frame to fill its superview width :
 */
- (CGRect)fillInSuperviewWidth;

/* Change view frame to fill its superview height :
 */
- (CGRect)fillInSuperviewHeight;

@end
