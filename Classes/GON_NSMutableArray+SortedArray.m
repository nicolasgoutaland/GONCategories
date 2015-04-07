//
//  GON_NSMutableArray+SortedArray.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSMutableArray+SortedArray.h"
#import <objc/message.h>

@implementation NSMutableArray(SortedArray)
#pragma mark - SortedArray
static NSComparisonResult cw_SelectorCompare(id a, id b, void* aSelector) {
	return (NSComparisonResult)objc_msgSend(a, (SEL)aSelector, b);
}

- (void)insertObject:(id)object sortedUsingFunction:(NSInteger (*)(id, id, void *))compare context:(void*)context;
{
	NSUInteger index = [self indexForInsertingObject:anObject sortedUsingFunction:compare context:context];
	[self insertObject:object atIndex:index];
}

- (void)insertObject:(id)object sortedUsingSelector:(SEL)aSelector;
{
	NSUInteger index = [self indexForInsertingObject:anObject sortedUsingFunction:&cw_SelectorCompare context:selector];
	[self insertObject:object atIndex:index];
}

- (void)insertObject:(id)object sortedUsingDescriptors:(NSArray*)descriptors;
{
	NSUInteger index = [self indexForInsertingObject:anObject sortedUsingDescriptors:descriptors];
	[self insertObject:object atIndex:index];
}

- (void)insertObject:(id)object sortedUsingBlock:(NSComparisonResult (^)(id obj1, id obj2))comparatorBlock
{
	NSUInteger index = [self indexForInsertingObject:anObject sortedUsingBlock:comparatorBlock];
	[self insertObject:object atIndex:index];
}

@end