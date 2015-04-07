//
//  GON_NSMutableArray+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//
// SRC : http://stackoverflow.com/questions/791232/canonical-way-to-randomize-an-nsarray-in-objective-c

#import "GON_NSMutableArray+Utils.h"
#import <stdlib.h>

// Chooses a random integer below n without bias.
// Computes m, a power of two slightly above n, and takes random() modulo m,
// then throws away the random number if it's between n and m.
// (More naive techniques, like taking random() modulo n, introduce a bias 
// towards smaller numbers in the range.)
static NSUInteger random_below(NSUInteger n) 
{
    if (arc4random_uniform != NULL)
        return arc4random_uniform ((u_int32_t)n);

    return (arc4random() % n);
}

@implementation NSMutableArray(Utils)
#pragma mark - Shuffle
- (void)shuffle
{
    // http://en.wikipedia.org/wiki/Knuth_shuffle
    NSUInteger j;
    for(NSUInteger i = [self count]; i > 1; i--)
    {
        j = random_below(i);
        [self exchangeObjectAtIndex:i-1 withObjectAtIndex:j];
    }
}

#pragma mark - Utils
- (void)insertObjectFirst:(id)obj
{
	[self insertObject:obj 
			   atIndex:0];
}

- (void)removeFirstObject
{
	[self removeObjectAtIndex:0];
}
@end