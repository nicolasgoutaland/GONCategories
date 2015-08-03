//
//  GON_NSNumber+Compare.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSArray+Utils.h"

@implementation NSNumber(Compare)
#pragma mark - Utils
- (NSNumber *)biggerNumber:(NSNumber *)anotherNumber
{
    if ([self compare:anotherNumber] != NSOrderedAscending)
        return self;
    
    return anotherNumber;
}

- (NSNumber *)smallerNumber:(NSNumber *)anotherNumber
{
    if ([self compare:anotherNumber] != NSOrderedDescending)
        return self;
    
    return anotherNumber;
}
@end