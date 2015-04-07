//
//  GON_NSManagedObjectContext+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSManagedObjectContext+Utils.h"

@implementation NSManagedObjectContext (Utils)
#pragma mark - Utils
- (void)deleteObjects:(id <NSFastEnumeration>)objects
{
    for (id obj in objects)
        [self deleteObject:obj];
}
@end