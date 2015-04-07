//
//  GON_NSMutableDictionary+Set.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSMutableDictionary(Set)
/* Same as setObject:forKey:, but adding values in a NSMutableSet */
- (void)addObject:(id)value inSetForKey:(id)key;

/* Same as setObject:forKey:, but unions all values in a NSMutableSet */
- (void)addObjects:(NSSet*)values inSetForKey:(id)key;

/* Same as removeObjectForKey:, but removing value from the created set. If set is empty after operation, it will be removed. */
- (void)removeObject:(id)value fromSetWithKey:(id)key;
@end
