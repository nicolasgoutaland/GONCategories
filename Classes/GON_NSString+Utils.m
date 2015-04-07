//
//  GON_NSString+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSString+Utils.h"

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

- (NSString*)stringURLEncoded
{
    NSMutableString *string = [self mutableCopy];

    [string replaceOccurrencesOfString:@"&amp;" withString:@"&" options:0 range:string.range];
    string = [[string stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] mutableCopy];

    [string replaceOccurrencesOfString:@"&" withString:@"%26" options:0 range:string.range];
    [string replaceOccurrencesOfString:@"+" withString:@"%2B" options:0 range:string.range];
    [string replaceOccurrencesOfString:@"#" withString:@"%23" options:0 range:string.range];
    [string replaceOccurrencesOfString:@"!" withString:@"%21" options:0 range:string.range];
    [string replaceOccurrencesOfString:@"@" withString:@"%40" options:0 range:string.range];

    return string;
}

- (BOOL)containsString:(NSString*)aString
{
	return [self rangeOfString:aString].location != NSNotFound;
}

- (BOOL)startsWithString:(NSString*)aString
{
	return [self rangeOfString:aString].location == 0;
}

- (BOOL)endsWithString:(NSString*)aString
{
	return [self rangeOfString:aString].location == (self.length - aString.length);	
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