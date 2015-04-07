//
//  GON_UIControl+Utils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface UIControl (Utils)
/* Remove all targets for given control events */
- (void)removeAllTargetsForControlEvents:(UIControlEvents)controlEvents;

/* Remove all targets */
- (void)removeAllTargets;
@end
