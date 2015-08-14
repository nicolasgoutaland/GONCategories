//
//  GON_NSManagedObject+PropertyExtraction.h
//
//  Created by Nicolas Goutaland on 14/08/15.
//  Copyright (c) 2015 Nicolas Goutaland. All rights reserved.
//


@interface NSManagedObject (PropertyExtraction)
/* Return an array of dictionaries containing values for asked properties names.
 * Request is executed on class entity
 */
+ (NSArray *)valuesForProperties:(NSArray *)propertiesNames usingPredicate:(NSPredicate *)predicate managedObjectContext:(NSManagedObjectContext *)context;

/* Return an array of values for asked property name
 * Request is executed on class entity */
+ (NSArray *)valuesForProperty:(NSString *)propertyName usingPredicate:(NSPredicate *)predicate managedObjectContext:(NSManagedObjectContext *)context;
@end
