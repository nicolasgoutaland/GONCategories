//
//  GON_NSDictionary+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSDictionary+Utils.h"

@implementation NSDictionary(Utils)
#pragma mark - Copy
- (NSMutableDictionary *)mutableCopyDeep
{
    return (NSMutableDictionary *)CFBridgingRelease(CFPropertyListCreateDeepCopy(kCFAllocatorDefault, (CFDictionaryRef)self, kCFPropertyListMutableContainers));
}

#pragma mark - Utils
- (id)objectForKeyOrNil:(id)key
{
	id obj = [self objectForKey:key];
	if (obj == [NSNull null])
		return nil;
	return obj;
}

- (id)objectForKeyOrNil:(id)key defaultValue:(id)defaultValue
{
	id obj = [self objectForKeyOrNil:key];
	if (!obj)
		return defaultValue;

	return obj;
}

- (id)objectForKey:(id)key defaultValue:(id)defaultValue
{
	id obj = [self objectForKey:key];
	if (!obj)
		return defaultValue;

	return obj;
}

- (id)anyObjectInSetForKey:(id)key
{
    return [[self objectForKey:key] anyObject];
}

- (NSDictionary *)invertedDictionary
{
    NSMutableDictionary *invertedDic = [[NSMutableDictionary alloc] initWithCapacity:self.count];
    
    for (NSString *key in [self allKeys])
        [invertedDic setObject:key forKey:[self objectForKey:key]];
    
    return invertedDic;
}

- (BOOL)hasKey:(NSString *)key
{
    return [self objectForKey:key] != nil;
}

@end