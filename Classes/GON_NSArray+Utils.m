//
//  GON_NSArray+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSArray+Utils.h"
#import "GON_NSMutableArray+Utils.h"

@implementation NSArray(Utils)
#pragma mark - Shuffle
- (NSArray*)shuffledArray
{
    // Make a copy
    NSMutableArray *array = [self mutableCopy];
    
    // Shuffle array
    [array shuffle];

    return array;
}

#pragma mark - Utils
- (NSArray *)reversedArray
{
    return self.reverseObjectEnumerator.allObjects;
}

- (NSArray *)valuesForKey:(id)key
{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    id value;
    for (id obj in self)
    {
        value = [obj valueForKey:key];
        if (value)
            [array addObject:value];
    }

    return array;
}

- (NSDictionary *)convertToDictionaryUsingValueAsKey:(id)valueForKey
{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    
    id key;
    for (id obj in self)
    {
        // Retrieve key
        key = [obj valueForKey:valueForKey];

        // If a key is available, store object
        if (key)
        {
            [dic setObject:obj
                    forKey:key];
        }
    }

    return dic;
}

#pragma mark - Getters
- (NSRange)range
{
	return NSMakeRange(0, self.count);
}
@end