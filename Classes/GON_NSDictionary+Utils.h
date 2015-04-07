//
//  GON_NSDictionary+Utils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSDictionary(Utils)
/* Same as objectForKey:, but returning nil if object is [NSNull null] */
- (id)objectForKeyOrNil:(id)key;

/* Same as objectForKey:, but return defaultValue instead of nil if no value found */
- (id)objectForKey:(id)key defaultValue:(id)defaultValue;

/* Assume dictionary values are NSSet object, so return anyObject on one associated to key */
- (id)anyObjectInSetForKey:(id)key;

/* Return inverted dictionary, using keys as value and vice versa.
 * Be careful, if dictionary contains identical objects, some values will be missing in resulting dictionary
 */
- (NSDictionary *)invertedDictionary;

/* Check if dictionary has given key */
- (BOOL)hasKey:(NSString *)key;
@end
