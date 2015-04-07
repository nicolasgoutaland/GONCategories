//
//  GON_NSMutableArray+Utils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSMutableArray(Utils)
/* Insert an object at the first position in the array */
- (void)insertObjectFirst:(id)obj;

/* Remove first object from array. Same as [self removeObjectAtIndex:0]. */
- (void)removeFirstObject;

/* Shuffle array */
- (void)shuffle;
@end
