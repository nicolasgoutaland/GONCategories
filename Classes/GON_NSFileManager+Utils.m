//
//  GON_NSFileManager+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSFileManager+Utils.h"

@interface NSFileManager ()
@end

@implementation NSFileManager (Utils)
#pragma mark - Utils
- (unsigned long long)sizeForItemAtPath:(NSString *)path
{
    NSDictionary *fileAttributes = [self attributesOfItemAtPath:path
                                                          error:nil];

    return [[fileAttributes objectForKey:NSFileSize] unsignedLongLongValue];
}

- (BOOL)isDirectoryAtPath:(NSString *)path
{
    NSDictionary *fileAttributes = [self attributesOfItemAtPath:path
                                                          error:nil];

    return [[fileAttributes objectForKey:NSFileType] isEqual:NSFileTypeDirectory];
}

@end