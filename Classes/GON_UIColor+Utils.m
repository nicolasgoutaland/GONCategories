//
//  GON_UIColor+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UIColor+Utils.h"

@implementation UIColor (Utils)
#pragma mark - Utils
- (UIColor *)foregroundColor
{
    CGFloat red, green, blue;
    [self getRed:&red green:&green blue:&blue alpha:nil];

    // Compute brightness
    CGFloat brightness = sqrt((red * red * .241) + (green * green * .691) + (blue * blue * .068));

    return (brightness < 130 ? [UIColor whiteColor] : [UIColor blackColor]);
}
@end
