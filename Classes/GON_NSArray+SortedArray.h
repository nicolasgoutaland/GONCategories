//
//  GON_NSArray+SortedArray.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//
// Source : http://blog.jayway.com/2009/03/28/adding-sorted-inserts-to-uimutablearray/

@interface NSArray(SortedArray)
/* Retrieve object insertion index, assuming the array is sorted, using given function */
- (NSUInteger)indexForInsertingObject:(id)object sortedUsingFunction:(NSInteger (*)(id, id, void *))compare context:(void*)context;

/* Retrieve object insertion index, assuming the array is sorted, using given selector */
- (NSUInteger)indexForInsertingObject:(id)object sortedUsingSelector:(SEL)selector;

/* Retrieve object insertion index, assuming the array is sorted, using given sort descriptors */
- (NSUInteger)indexForInsertingObject:(id)object sortedUsingDescriptors:(NSArray*)descriptors;

/* Retrieve object insertion index, assuming the array is sorted, using given block */
- (NSUInteger)indexForInsertingObject:(id)object sortedUsingBlock:(NSComparisonResult (^)(id obj1, id obj2))comparatorBlock;

@end
