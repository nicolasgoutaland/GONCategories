//
//  GON_UIControl+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UIControl+Utils.h"

@interface UIControl ()
@end

@implementation UIControl (Utils)
#pragma mark - Utils
- (void)removeAllTargetsForControlEvents:(UIControlEvents)controlEvents
{
    [self removeTarget:nil
                action:NULL
      forControlEvents:controlEvents];
}

- (void)removeAllTargets
{
    [self removeAllTargetsForControlEvents:UIControlEventAllEvents];
}

@end