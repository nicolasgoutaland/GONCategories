//
//  GON_UIViewController+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface UIViewController (Utils)
/* Dismiss current modal view controller, animated. Same as dismissViewControllerAnimated:YES completion:nil */
- (void)dismissViewControllerAnimated;

/* Dismiss current modal view controller, without animation. Same as dismissViewControllerAnimated:NO completion:nil */
- (void)dismissViewController;
@end
