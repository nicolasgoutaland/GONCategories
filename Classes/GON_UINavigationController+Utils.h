//
//  GON_UINavigationController+Utils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface UINavigationController (Utils)
/* Pop current view controller, animated. Same as popViewControllerAnimated:YES */
- (void)popViewControllerAnimated;

/* Pop to root view controller, animated. Same as popToRootViewControllerAnimated:YES */
- (void)popToRootViewControllerAnimated;

/* Pop current view controller, without animation. Same as popViewControllerAnimated:NO */
- (void)popViewController;

/* Pop to root view controller, without animation. Same as popToRootViewControllerAnimated:NO */
- (void)popToRootViewController;
@end
