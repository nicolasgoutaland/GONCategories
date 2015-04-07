//
//  GON_UIColor+Utils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface UIColor (Utils)
/* Return best matching foreground color according to current color.
 * Will return black or white, based on color brightness
 */
- (UIColor *)foregroundColor;
@end
