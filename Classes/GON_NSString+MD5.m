//
//  GON_NSString+MD5.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//
//  Source : http://mobiledevelopertips.com/core-services/create-md5-hash-from-nsstring-nsdata-or-file.html
//  Source : http://stackoverflow.com/questions/13243618/encryption-into-a-32-bit-string-in-unicode-ucs-16-format-by-md5-algorithm

#import "GON_NSString+MD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (MD5)
#pragma mark - MD5
- (NSString *)unicodeMD5
{
    // Convert string to unicode
    NSData *utf16data = [self dataUsingEncoding:NSUTF16LittleEndianStringEncoding];
    unsigned char result[CC_MD5_DIGEST_LENGTH];

    CC_MD5([utf16data bytes], (unsigned int)[utf16data length], result);

    // Result string
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];

    for (int i = 0; i<CC_MD5_DIGEST_LENGTH; i++)
        [ret appendFormat:@"%02x",result[i]];

    return ret;
}

- (NSString *)MD5
{
    // Create pointer to the string as UTF8
    const char *ptr = [self UTF8String];

    // Create byte array of unsigned chars
    unsigned char md5Buffer[CC_MD5_DIGEST_LENGTH];

    // Create 16 byte MD5 hash value, store in buffer
    CC_MD5(ptr, (unsigned int)strlen(ptr), md5Buffer);

    // Convert MD5 value in the buffer to NSString of hex values
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x",md5Buffer[i]];

    return output;
}

@end
