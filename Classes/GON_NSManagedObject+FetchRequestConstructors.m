//
//  GON_NSManagedObject+FetchRequestConstructors.m
//
//  Created by Nicolas Goutaland on 14/08/15.
//  Copyright (c) 2015 Nicolas Goutaland. All rights reserved.
//


#import "GON_NSManagedObject+FetchRequestConstructors.h"

@implementation NSManagedObject(FetchRequestConstructors)
#pragma mark Fecth requests constructors
+ (NSFetchRequest*)fetchRequestUsingValue:(id)value forKey:(NSString*)key returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc
{
    // Create request
    NSFetchRequest *req        = [[NSFetchRequest alloc] init];

    req.entity                 = [NSEntityDescription entityForName:[self description] inManagedObjectContext:moc];
    req.predicate              = [NSPredicate predicateWithFormat:@"%K == %@", key, value];
    req.fetchLimit             = 1;
    req.returnsObjectsAsFaults = fault;
    
	return req;
}

+ (NSFetchRequest*)fetchRequestUsingPredicate:(NSPredicate*)predicate returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc
{
	// Create request
    NSFetchRequest *req        = [[NSFetchRequest alloc] init];

    req.entity                 = [NSEntityDescription entityForName:[self description] inManagedObjectContext:moc];
    req.predicate              = predicate;
    req.fetchLimit             = 1;
    req.returnsObjectsAsFaults = fault;

	return req;
}

+ (NSFetchRequest*)fetchRequestForAllEntitiesReturningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc
{
    return [self fetchRequestForAllEntitiesUsingPredicate:nil
                    usingSortDescriptors:nil
                        returningAsFault:fault
                 forManagedObjectContext:moc];
    
}

+ (NSFetchRequest*)fetchRequestForAllEntitiesUsingPredicate:(NSPredicate*)predicate returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc
{
    return [self fetchRequestForAllEntitiesUsingPredicate:predicate
                                     usingSortDescriptors:nil
                                         returningAsFault:fault
                                  forManagedObjectContext:moc];

}

+ (NSFetchRequest*)fetchRequestForAllEntitiesUsingSortDescriptors:(NSArray*)sortDescriptors returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc
{
    return [self fetchRequestForAllEntitiesUsingPredicate:nil
                                     usingSortDescriptors:sortDescriptors
                                         returningAsFault:fault
                                  forManagedObjectContext:moc];
}

+ (NSFetchRequest*)fetchRequestForAllSortedEntitiesReturningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc
{
    return [self fetchRequestForAllEntitiesUsingPredicate:nil
                                     usingSortDescriptors:[self sortDescriptors]
                                         returningAsFault:fault
                                  forManagedObjectContext:moc];
}

+ (NSFetchRequest*)fetchRequestForAllSortedEntitiesUsingPredicate:(NSPredicate*)predicate returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc
{
    return [self fetchRequestForAllEntitiesUsingPredicate:predicate
                                     usingSortDescriptors:[self sortDescriptors]
                                         returningAsFault:fault
                                  forManagedObjectContext:moc];
}

+ (NSFetchRequest*)fetchRequestForAllEntitiesUsingPredicate:(NSPredicate*)predicate usingSortDescriptors:(NSArray*)sortDescriptors returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc
{
    // Create request
	NSFetchRequest *req = [[NSFetchRequest alloc] init];
	
	req.entity = ENTITY_DESCRIPTION([self description], moc);
	req.sortDescriptors = sortDescriptors;
    req.predicate = predicate;
	req.returnsObjectsAsFaults = fault;
    
	return req;
}

@end