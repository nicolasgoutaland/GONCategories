//
//  GON_NSMutableDictionary+Array.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSMutableDictionary(Array)
/* Same as setObject:forKey:, but adding values in a NSMutableArray */
- (void)addObject:(id)value inArrayForKey:(id)key;

/* Same as setObject:forKey:, but unions all values in a NSMutableArray */
- (void)addObjects:(NSArray*)values inArrayForKey:(id)key;

/* Same as removeObjectForKey:, but removing value from the created array. If array is empty after operation, it will be removed. */
- (void)removeObject:(id)value fromArrayWithKey:(id)key;
@end
