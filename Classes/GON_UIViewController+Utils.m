//
//  GON_UIViewController+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UIViewController+Utils.h"

@implementation UIViewController (Utils)
#pragma mark - Utils
- (void)dismissViewControllerAnimated
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)dismissViewController
{
    [self dismissViewControllerAnimated:NO completion:nil];
}
@end