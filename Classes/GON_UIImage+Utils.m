//
//  GON_UIImage+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UIImage+Utils.h"

@interface UIImage ()
@end

@implementation UIImage (Utils)
#pragma mark - Image size
+ (CGSize)sizeForImageAtURL:(NSURL *)url
{
    // With CGImageSource we avoid loading the whole image into memory
    CGSize imageSize = CGSizeZero;
    CGImageSourceRef source = CGImageSourceCreateWithURL((__bridge CFURLRef)anURL, NULL);

    if (source)
    {
        NSDictionary *options = @{
                                  (NSString *)kCGImageSourceShouldCache : @(NO)
                                  };

        CFDictionaryRef properties = CGImageSourceCopyPropertiesAtIndex(source, 0, (__bridge CFDictionaryRef)options);

        if (properties)
        {
            NSNumber *width       = [(__bridge NSDictionary *)properties objectForKey:(NSString *)kCGImagePropertyPixelWidth];
            NSNumber *height      = [(__bridge NSDictionary *)properties objectForKey:(NSString *)kCGImagePropertyPixelHeight];
            NSNumber *orientation = [(__bridge NSDictionary *)properties objectForKey:(NSString *)kCGImagePropertyOrientation];

            if ((width != nil) && (height != nil))
            {
                /* The intended display orientation of the image. If present, the value
                 * of this key is a CFNumberRef with the same value as defined by the
                 * TIFF and Exif specifications.  That is:
                 *   1  =  0th row is at the top, and 0th column is on the left.
                 *   2  =  0th row is at the top, and 0th column is on the right.
                 *   3  =  0th row is at the bottom, and 0th column is on the right.
                 *   4  =  0th row is at the bottom, and 0th column is on the left.
                 *   5  =  0th row is on the left, and 0th column is the top.
                 *   6  =  0th row is on the right, and 0th column is the top.
                 *   7  =  0th row is on the right, and 0th column is the bottom.
                 *   8  =  0th row is on the left, and 0th column is the bottom.  
                 * If not present, a value of 1 is assumed. */
                if (orientation && [orientation intValue] > 4)
                    imageSize = CGSizeMake(height.floatValue, width.floatValue);
                else
                    imageSize = CGSizeMake(width.floatValue, height.floatValue);
            }

            CFRelease(properties);
        }

        CFRelease(source);
    }

    return imageSize;
}

+ (CGSize)sizeForImageAtPath:(NSString *)path
{
    return [self sizeForImageAtURL:[NSURL fileURLWithPath:aPath]];
}

#pragma mark - Utils
- (NSData *)pngRepresentationData
{
    return UIImagePNGRepresentation(self);
}

- (NSData *)jpgRepresentationData:(CGFloat)compression
{
    return UIImageJPEGRepresentation(self, compression);
}
@end