//
//  GON_NSString+Utils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSString(Utils)
/* Return a new string, initialized with a generated uuid */
+ (NSString *)stringWithUUID;

/* Return a new string, by appending given suffix to it, assuming its a path.
 * That means that suffix will be added before path extension
 */
- (NSString *)stringByAppendingPathSuffix:(NSString *)pathSuffix;

/* Return YES if string contains given string */
- (BOOL)containsString:(NSString *)string;

/* Return YES if string begins with given string */
- (BOOL)startsWithString:(NSString *)string;

/* Return YES if string ends with given string */
- (BOOL)endsWithString:(NSString *)string;

/* Return trimmed string */
- (NSString *)stringByTrimmingCharacters;

/* Return a string adding non breaking space characters :
 * - Ponctuation rules (!, ?, etc...)
 * - Quotes
 */
- (NSString *)stringByAddingNonBreakingSpaceCharacters;

/* Return same string with uppercased first letter */
- (NSString *)stringUcFirst;

/* Return same string with lowercased first letter */
- (NSString *)stringLcFirst;

/* Return same string removing all diacritics markings */
- (NSString *)stringByRemovingDiacritics;

/* Return range of string */
- (NSRange)range;

/* Return an URL encoded string */
- (NSString *)stringURLEncoded;

/* Return a string, with all HTML entities replaced by UTF-8 character */
- (NSString *)stringByCleaningHTMLEntities;

/* Return a string, adding HTML entities when needed */
- (NSString *)stringByAddingHTMLEntities;

@end
