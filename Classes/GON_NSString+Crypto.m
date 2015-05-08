//
//  GON_NSString+Crypto.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//
//  Source : http://mobiledevelopertips.com/core-services/create-md5-hash-from-nsstring-nsdata-or-file.html
//  Source : http://stackoverflow.com/questions/13243618/encryption-into-a-32-bit-string-in-unicode-ucs-16-format-by-md5-algorithm

#import "GON_NSString+Crypto.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Crypto)
#pragma mark - SHA256
- (NSString *)utf16SHA256
{
    // Convert string to unicode
    NSData *utf16data = [self dataUsingEncoding:NSUTF16LittleEndianStringEncoding];
    unsigned char result[CC_SHA256_DIGEST_LENGTH];

    CC_SHA256([utf16data bytes], (unsigned int)[utf16data length], result);

    return [self stringifyHexData:result length:CC_SHA256_DIGEST_LENGTH];
}

- (NSString *)SHA256
{
    // Create pointer to the string as UTF8
    const char *ptr = [self UTF8String];
    
    // Create byte array of unsigned chars
    unsigned char shaBuffer[CC_SHA256_DIGEST_LENGTH];
    
    CC_SHA256(ptr, (unsigned int)strlen(ptr), shaBuffer);

    return [self stringifyHexData:shaBuffer length:CC_SHA256_DIGEST_LENGTH];
}

#pragma mark - MD5
- (NSString *)utf16MD5
{
    // Convert string to unicode
    NSData *utf16data = [self dataUsingEncoding:NSUTF16LittleEndianStringEncoding];
    unsigned char result[CC_MD5_DIGEST_LENGTH];

    CC_MD5([utf16data bytes], (unsigned int)[utf16data length], result);

    return [self stringifyHexData:result length:CC_MD5_DIGEST_LENGTH];
}

- (NSString *)MD5
{
    // Create pointer to the string as UTF8
    const char *ptr = [self UTF8String];

    // Create byte array of unsigned chars
    unsigned char md5Buffer[CC_MD5_DIGEST_LENGTH];

    // Create 16 byte MD5 hash value, store in buffer
    CC_MD5(ptr, (unsigned int)strlen(ptr), md5Buffer);

    return [self stringifyHexData:md5Buffer length:CC_MD5_DIGEST_LENGTH];
}

#pragma mark - Utils
- (NSString *)stringifyHexData:(unsigned char *)buffer length:(int)length
{
    // Convert value in the buffer to NSString of hex values
    NSMutableString *output = [NSMutableString stringWithCapacity:length * 2];
    for (int i = 0; i < length; i++)
        [output appendFormat:@"%02x",buffer[i]];

    return output;
}
@end
