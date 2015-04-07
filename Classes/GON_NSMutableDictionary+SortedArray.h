//
//  GON_NSMutableDictionary+SortedArray.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSMutableDictionary(SortedArray)
/* Same as setObject:forKey:, but adding values in a sorted NSMutableArray using given function */
- (void)addObject:(id)value inSortedArrayUsingFunction:(NSInteger (*)(id, id, void *))compare context:(void*)context forKey:(NSString *)key;

/* Same as setObject:forKey:, but adding values in a sorted NSMutableArray using given selector */
- (void)addObject:(id)value inSortedArrayUsingSelector:(SEL)aSelector forKey:(NSString *)key;

/* Same as setObject:forKey:, but adding values in a sorted NSMutableArray using given descriptors */
- (void)addObject:(id)value inSortedArrayUsingDescriptors:(NSArray*)descriptors forKey:(NSString *)key;

/* Same as setObject:forKey:, but adding values in a sorted NSMutableArray using given block */
- (void)addObject:(id)value inSortedArrayUsingBlock:(NSComparisonResult (^)(id obj1, id obj2))comparatorBlock forKey:(NSString *)key;

@end
