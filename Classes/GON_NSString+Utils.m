//
//  GON_NSString+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSString+Utils.h"
#import "GON_NSMutableString+Utils.h"

@implementation NSString(Utils)
#pragma mark - Constructors
+ (NSString*)stringWithUUID
{
    return [[NSUUID UUID] UUIDString];
}

#pragma mark - Utils
- (NSString *)stringByAppendingPathSuffix:(NSString *)pathSuffix
{
    return [NSString stringWithFormat:@"%@%@.%@", [self stringByDeletingPathExtension], pathSuffix, [self pathExtension]];
}

// Source : http://stackoverflow.com/a/8088484/2713465
- (NSString*)stringURLEncoded
{
    NSMutableString *output = [NSMutableString string];
    const unsigned char* source = (const unsigned char *)[self UTF8String];
    NSUInteger sourceLen = (NSUInteger)strlen((const char *)source);
    for (NSUInteger i = 0; i < sourceLen; ++i) {
        const unsigned char thisChar = source[i];
        if (thisChar == ' '){
            [output appendString:@"+"];
        } else if (thisChar == '.' || thisChar == '-' || thisChar == '_' || thisChar == '~' ||
                   (thisChar >= 'a' && thisChar <= 'z') ||
                   (thisChar >= 'A' && thisChar <= 'Z') ||
                   (thisChar >= '0' && thisChar <= '9')) {
            [output appendFormat:@"%c", thisChar];
        } else {
            [output appendFormat:@"%%%02X", thisChar];
        }
    }
    
    return output;
}

- (BOOL)containsString:(NSString*)string
{
	return [self rangeOfString:string].location != NSNotFound;
}

- (BOOL)startsWithString:(NSString*)string
{
	return [self rangeOfString:string].location == 0;
}

- (BOOL)endsWithString:(NSString*)string
{
	return [self rangeOfString:string].location == (self.length - string.length);
}

- (NSString *)stringByTrimmingCharacters
{
    return [[self mutableCopy] trim];
}

- (NSString*)stringUcFirst
{
    return [[self mutableCopy] ucFirst];
}

- (NSString*)stringLcFirst
{
    return [[self mutableCopy] lcFirst];
}

- (NSString*)stringByRemovingDiacritics
{
    return [[self mutableCopy] removeDiacritics];
}

- (NSString*)stringByAddingNonBreakingSpaceCharacters
{
    return [[self mutableCopy] addNonBreakingSpaceCharacters];
}

- (NSString *)stringByCleaningHTMLEntities
{
    return [[self mutableCopy] cleanHTMLEntities];
}

- (NSString *)stringByAddingHTMLEntities
{
    return [[self mutableCopy] addHTMLEntities];
}

- (NSRange)range
{
	return NSMakeRange(0, self.length);
}

@end