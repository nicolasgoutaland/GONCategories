//
//  GON_NSMutableDictionary+SortedArray.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSMutableDictionary+SortedArray.h"
#import "GON_NSMutableArray+SortedArray.h"

@implementation NSMutableDictionary(SortedArray)
#pragma mark - Sorted array
- (void)addObject:(id)value inSortedArrayUsingFunction:(NSInteger (*)(id, id, void *))compare context:(void*)context forKey:(NSString *)key
{
	// Get back array
	NSMutableArray *array = [self objectForKey:key];
	if (!array)
	{	
		// Array doesn't exist, create a new one
		array = [[NSMutableArray alloc] init];
		[self setObject:array
				 forKey:key];
	}
	
	// Add value to array
	[array insertObject:value
	sortedUsingFunction:compare
				context:context];
	
}

- (void)addObject:(id)value inSortedArrayUsingSelector:(SEL)aSelector forKey:(NSString *)key
{
	// Get back array
	NSMutableArray *array = [self objectForKey:key];
	if (!array)
	{	
		// Array doesn't exist, create a new one
		array = [[NSMutableArray alloc] init];
		[self setObject:array
				 forKey:key];
	}
	
	// Add value to array
	[array insertObject:value
	sortedUsingSelector:aSelector];
}

- (void)addObject:(id)value inSortedArrayUsingDescriptors:(NSArray*)descriptors forKey:(NSString *)key
{
	// Get back array
	NSMutableArray *array = [self objectForKey:key];
	if (!array)
	{	
		// Array doesn't exist, create a new one
		array = [[NSMutableArray alloc] init];
		[self setObject:array
				 forKey:key];
	}
	
	// Add value to array
	[array insertObject:value
 sortedUsingDescriptors:descriptors];
}

- (void)addObject:(id)value inSortedArrayUsingBlock:(NSComparisonResult (^)(id obj1, id obj2))comparatorBlock forKey:(NSString *)key
{
	// Get back array
	NSMutableArray *array = [self objectForKey:key];
	if (!array)
	{	
		// Array doesn't exist, create a new one
		array = [[NSMutableArray alloc] init];
		[self setObject:array
				 forKey:key];
	}
	
	// Add value to array
	[array insertObject:value
	   sortedUsingBlock:comparatorBlock];
}
@end