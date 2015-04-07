//
//  GON_UIView+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UIView+Utils.h"

@implementation UIView (Utils)
#pragma mark - Utils
- (UIImage *)imageFromView
{
    // Begin context
    UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, [UIScreen mainScreen].scale);

    // Render view
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];

    // Create an image from context
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();

    // Close context
    UIGraphicsEndImageContext();

    return newImage;
}

@end