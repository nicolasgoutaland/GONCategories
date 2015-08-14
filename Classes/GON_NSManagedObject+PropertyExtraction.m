//
//  GON_NSManagedObject+PropertyExtraction.m
//
//  Created by Nicolas Goutaland on 14/08/15.
//  Copyright (c) 2015 Nicolas Goutaland. All rights reserved.
//


#import "GON_NSManagedObject+PropertyExtraction.h"
#import "GON_NSManagedObject+PropertyDescription.h"

@implementation NSManagedObject (PropertyExtraction)
#pragma mark PropertyExtraction
+ (NSArray *)valuesForProperties:(NSArray *)propertiesNames usingPredicate:(NSPredicate *)predicate managedObjectContext:(NSManagedObjectContext *)context
{
    NSFetchRequest *req   = [[NSFetchRequest alloc] initWithEntityName:[self description]];
    req.resultType        = NSDictionaryResultType;
    req.predicate         = predicate;
    req.propertiesToFetch = [self propertiesDescriptionForAttributes:propertiesNames
                                              inManagedObjectContext:context];

    // Retrieve complaint ids
    NSArray *res = [context executeFetchRequest:req
                                          error:nil];

    return res;
}

+ (NSArray *)valuesForProperty:(NSString *)propertyName usingPredicate:(NSPredicate *)predicate managedObjectContext:(NSManagedObjectContext *)context
{
    NSFetchRequest *req   = [[NSFetchRequest alloc] initWithEntityName:[self description]];
    req.resultType        = NSDictionaryResultType;
    req.predicate         = predicate;
    req.propertiesToFetch = @[[self propertyDescriptionForAttribute:propertyName inManagedObjectContext:context]];

    // Retrieve complaint ids
    NSArray *res = [context executeFetchRequest:req
                                          error:nil];

    // Extract attribute
    NSMutableArray *ids = [[NSMutableArray alloc] init];
    for (NSDictionary *dic in res)
        [ids addObject:[dic objectForKey:propertyName]];

    return ids;
}

@end