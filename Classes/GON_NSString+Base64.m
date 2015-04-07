//
//  GON_NSString+Base64.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSString+Base64.h"

@implementation NSString(Base64)
#pragma mark - Base 64
- (NSData *)dataFromBase64String
{
	if ([self length] == 0)
		return [NSData data];

#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_7_0
    return [[NSData alloc] initWithBase64EncodedString:self options:0];
#else
    return [[NSData alloc] initWithBase64Encoding:self];
#endif
}

@end
