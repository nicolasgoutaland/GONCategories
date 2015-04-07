//
//  GON_UIImage+Utils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//
@interface UIImage (Utils)
/* Return size of an image at given path, without loading it into memory */
+ (CGSize)sizeForImageAtPath:(NSString *)path;

/* Return size of an image at given url, without loading it into memory */
+ (CGSize)sizeForImageAtURL:(NSURL *)url;

/* Return NSData PNG image representation */
- (NSData *)pngRepresentationData;

/* Return NSData JPG image representation */
- (NSData *)jpgRepresentationData:(CGFloat)compression;
@end
