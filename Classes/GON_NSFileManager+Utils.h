//
//  GON_NSFileManager+Utils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//
@interface NSFileManager (Utils)
/* Return size for item at given path.
 * Return 0 is item was not found
 */
- (unsigned long long)sizeForItemAtPath:(NSString *)path;

/* Check if given file is a directory or not */
- (BOOL)isDirectoryAtPath:(NSString *)path;
@end
