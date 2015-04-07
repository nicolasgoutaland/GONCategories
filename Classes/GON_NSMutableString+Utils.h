//
//  GON_NSMutableString+UTils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSMutableString(Utils)
/* Trim string
 * return self 
 */
- (NSMutableString *)trim;

/* Uppercase first letter of string
 * return self 
 */
- (NSMutableString *)ucFirst;

/* Lowercase first letter of string
 * return self 
 */
- (NSMutableString *)lcFirst;

/* Remove all diacritics markings
 * return self 
 */
- (NSMutableString *)removeDiacritics;

/* Add non breaking space characters to string :
 * - Ponctuation rules (!, ?, etc...)
 * - Quotes
 * return self 
 */
- (NSMutableString *)addNonBreakingSpaceCharacters;

/* Replace all HTML entities by UTF-8 character
 * return self 
 */
- (NSMutableString *)cleanHTMLEntities;

/* Add HTML entities to string.
 * return self 
 */
- (NSMutableString *)addHTMLEntities;

@end
