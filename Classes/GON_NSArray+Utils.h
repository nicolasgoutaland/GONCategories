//
//  GON_NSArray+Utils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSArray(Utils)
/* Return a shuffled copy of this array  */
- (NSArray *)shuffledArray;

/* Return a reversed version of array */
- (NSArray *)reversedArray;

/* Convert given array to a dicitonary using given valueForKey field as key in dictionary.
 * If valueForKey field is nil, object will be skipped.
 * If many object have the same key, only last one will be stored in dictionary
 */
- (NSDictionary *)convertToDictionaryUsingValueAsKey:(id)valueForKey;

/* Return an array built calling valueForKey:key on each object.
 * If valueForKey: return nil, object will be skipped
 */
- (NSArray *)valuesForKey:(id)key;

/* Return a deep mutable copy */
- (NSMutableArray *)mutableCopyDeep;

@property (nonatomic, readonly) NSRange range; // Return the range of the array (0, count)
@end
