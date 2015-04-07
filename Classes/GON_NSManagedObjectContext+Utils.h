//
//  GON_NSManagedObjectContext+Utils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//
@interface NSManagedObjectContext (Utils)
/* Delete all given objects*/
- (void)deleteObjects:(id <NSFastEnumeration>)objects;
@end
