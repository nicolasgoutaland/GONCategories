//
//  GON_NSData+Base64.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSData+Base64.h"

@implementation NSData(Base64)
#pragma mark - Base 64 encoding
- (NSString *)base64EncodedString
{
	if ([self length] == 0)
		return @"";

#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_7_0
    return [self base64EncodedStringWithOptions:0];
#else
    return [self base64Encoding];
#endif
}
@end