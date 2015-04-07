//
//  GON_UINavigationController+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UINavigationController+Utils.h"

@interface UINavigationController ()
@end

@implementation UINavigationController (Utils)
#pragma mark - Utils
- (void)popViewControllerAnimated
{
    [self popViewControllerAnimated:YES];
}

- (void)popToRootViewControllerAnimated
{
    [self popToRootViewControllerAnimated:YES];
}

- (void)popViewController
{
    [self popViewControllerAnimated:NO];
}

- (void)popToRootViewController
{
    [self popToRootViewControllerAnimated:NO];
}
@end