//
//  GON_NSMutableDictionary+Array.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSMutableDictionary+Array.h"

@implementation NSMutableDictionary(Array)
#pragma mark - Array
- (void)addObject:(id)value inArrayForKey:(id)key
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
	[array addObject:value];
}

- (void)addObjects:(NSArray*)values inArrayForKey:(id)key
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
	[array addObjectsFromArray:values];
}

- (void)removeObject:(id)value fromArrayWithKey:(id)key
{
	// Get back set
	NSMutableArray *array = [self objectForKey:key];
	if (!array)
		return;
	
	// Array found, remove object
	[array removeObject:value];
	
	// If array is empty, remove it
	if (!array.count)
		[self removeObjectForKey:key];
}
@end