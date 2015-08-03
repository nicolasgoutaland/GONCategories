//
//  GON_NSNumber+Compare.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSNumber(Compare)
/* Return bigger number between self and other number. Like MAX, for NSNumber.
 * If equals, return self.
 */
- (NSNumber *)biggerNumber:(NSNumber *)anotherNumber;

/* Return smallest number between self and other number. Like MIN, for NSNumber
 * If equals, return self.
 */
- (NSNumber *)smallerNumber:(NSNumber *)anotherNumber;

@end
