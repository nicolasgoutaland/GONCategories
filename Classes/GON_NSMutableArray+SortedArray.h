//
//  GON_NSMutableArray+SortedArray.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//
// Source : http://blog.jayway.com/2009/03/28/adding-sorted-inserts-to-uimutablearray/

@interface NSMutableArray(SortedArray)
/* Insert object into array, assuming the array is sorted, using given function */
- (void)insertObject:(id)object sortedUsingFunction:(NSInteger (*)(id, id, void *))compare context:(void*)context;

/* Insert object into array, assuming the array is sorted, using given selector */
- (void)insertObject:(id)object sortedUsingSelector:(SEL)selector;

/* Insert object into array, assuming the array is sorted, using given sort descriptors */
- (void)insertObject:(id)object sortedUsingDescriptors:(NSArray*)descriptors;

/* Retrieve object insertion index, assuming the array is sorted, using given block */
- (void)insertObject:(id)object sortedUsingBlock:(NSComparisonResult (^)(id obj1, id obj2))comparatorBlock;
@end
