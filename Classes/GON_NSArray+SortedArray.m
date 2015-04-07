//
//  GON_NSArray+SortedArray.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSArray+SortedArray.h"
#import <objc/message.h>

@implementation NSArray(SortedArray)
#pragma mark - Class initialization
static IMP cw_compareObjectToObjectImp = NULL;
static IMP cw_ascendingImp = NULL;

+ (void)initialize
{
	@synchronized(self)
	{	
		cw_compareObjectToObjectImp = [NSSortDescriptor instanceMethodForSelector:@selector(compareObject:toObject:)];
		cw_ascendingImp = [NSSortDescriptor instanceMethodForSelector:@selector(ascending)];
	}
}

#pragma mark - Private methods
static NSComparisonResult cw_SelectorCompare(id a, id b, void* aSelector) {
	return (NSComparisonResult)objc_msgSend(a, (SEL)aSelector, b);
}

static NSComparisonResult cw_DescriptorCompare(id a, id b, void* descriptors) {
	NSComparisonResult result = NSOrderedSame;
	for (NSSortDescriptor* sortDescriptor in (__bridge NSArray*)descriptors) {
		result = (NSComparisonResult)cw_compareObjectToObjectImp(sortDescriptor, @selector(compareObject:toObject:), a, b);
		if (result != NSOrderedSame) {
			if (!cw_ascendingImp(sortDescriptor, @selector(ascending))) {
				result = 0 - result;
			}
			break;
		}
	}
	return result;
}

static NSComparisonResult cw_BlockCompare(id a, id b, void* comparatorBlock) {
	return ((__bridge NSComparisonResult (^)(id obj1, id obj2))comparatorBlock)(a, b);
}

#pragma mark - Sorted Array
- (NSUInteger)indexForInsertingObject:(id)object sortedUsingFunction:(NSInteger (*)(id, id, void *))compare context:(void*)context
{
	NSUInteger index = 0;
	NSUInteger topIndex = [self count];
	IMP objectAtIndexImp = [self methodForSelector:@selector(objectAtIndex:)];
	while (index < topIndex) {
		NSUInteger midIndex = (index + topIndex) / 2;
		id testObject = objectAtIndexImp(self, @selector(objectAtIndex:), midIndex);
		if (compare(object, testObject, context) > 0) {
			index = midIndex + 1;
		} else {
			topIndex = midIndex;
		}
	}
	return index;
}

- (NSUInteger)indexForInsertingObject:(id)object sortedUsingSelector:(SEL)selector
{
	return [self indexForInsertingObject:object sortedUsingFunction:&cw_SelectorCompare context:selector];
}

- (NSUInteger)indexForInsertingObject:(id)object sortedUsingDescriptors:(NSArray*)descriptors
{
	return [self indexForInsertingObject:object sortedUsingFunction:&cw_DescriptorCompare context:(__bridge void *)(descriptors)];
}

- (NSUInteger)indexForInsertingObject:(id)object sortedUsingBlock:(NSComparisonResult (^)(id obj1, id obj2))comparatorBlock
{
	return [self indexForInsertingObject:object sortedUsingFunction:&cw_BlockCompare context:(__bridge void *)(comparatorBlock)];
}

@end