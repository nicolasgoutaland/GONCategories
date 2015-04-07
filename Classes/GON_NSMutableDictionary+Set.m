//
//  GON_NSMutableDictionary+Set.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSMutableDictionary+Set.h"

@implementation NSMutableDictionary(Set)
#pragma mark - Set
- (void)addObject:(id)value inSetForKey:(id)key
{
	// Get back set
	NSMutableSet *set = [self objectForKey:key];
	if (!set)
	{	
		// Set doesn't exist, create a new one
		set = [[NSMutableSet alloc] init];
		[self setObject:set
				 forKey:key];
	}
	
	// Add value to set
	[set addObject:value];
}

- (void)addObjects:(NSSet*)values inSetForKey:(id)key
{
	// Get back set
	NSMutableSet *set = [self objectForKey:key];
	if (!set)
	{	
		// Set doesn't exist, create a new one
		set = [[NSMutableSet alloc] init];
		[self setObject:set
				 forKey:key];
	}
	
	// Add value to set
	[set unionSet:values];
}

- (void)removeObject:(id)value fromSetWithKey:(id)key
{
	// Get back set
	NSMutableSet *set = [self objectForKey:key];
	if (!set)
		return;
	
	// Set found, remove object
	[set removeObject:value];
	
	// If set is empty, remove it
	if (!set.count)
		[self removeObjectForKey:key];
}
@end