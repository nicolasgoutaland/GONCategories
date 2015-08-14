//
//  GON_NSManagedObject+FetchedResultsControllerConstructors.m
//
//  Created by Nicolas Goutaland on 14/08/15.
//  Copyright (c) 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSManagedObject+FetchedResultsControllerConstructors.h"

@implementation NSManagedObject (FetchedResultsControllerConstructors)
#pragma mark FetchedResultsControllerConstructors
+ (NSFetchedResultsController*)fetchedResultsControllerForFetchRequest:(NSFetchRequest*)fetchRequest delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc
{
    return [self fetchedResultsControllerForFetchRequest:fetchRequest
                                                   cache:nil
                                             sectionName:nil
                                                delegate:delegate
                               usingManagedObjectContext:moc];
}

+ (NSFetchedResultsController*)fetchedResultsControllerForFetchRequest:(NSFetchRequest*)fetchRequest cache:(NSString*)cache delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc
{
    return [self fetchedResultsControllerForFetchRequest:fetchRequest
                                                   cache:cache
                                             sectionName:nil
                                                delegate:delegate
                               usingManagedObjectContext:moc];
}

+ (NSFetchedResultsController*)fetchedResultsControllerForFetchRequest:(NSFetchRequest*)fetchRequest sectionName:(NSString*)sectionName delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc
{
    return [self fetchedResultsControllerForFetchRequest:fetchRequest
                                                   cache:nil
                                             sectionName:sectionName
                                                delegate:delegate
                               usingManagedObjectContext:moc];
}

+ (NSFetchedResultsController*)fetchedResultsControllerForFetchRequest:(NSFetchRequest*)fetchRequest cache:(NSString*)cache sectionName:(NSString*)sectionName delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc
{
    NSFetchedResultsController *frc = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest
                                                                          managedObjectContext:moc
                                                                            sectionNameKeyPath:sectionName
                                                                                     cacheName:cache];
    
    frc.delegate = delegate;

    return frc;
}

+ (NSFetchedResultsController*)fetchedResultsControllerCachedForFetchRequest:(NSFetchRequest*)fetchRequest delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc
{
    return [self fetchedResultsControllerForFetchRequest:fetchRequest
                                                   cache:[self description]
                                             sectionName:nil
                                                delegate:delegate
                               usingManagedObjectContext:moc];
}

+ (NSFetchedResultsController*)fetchedResultsControllerCachedForFetchRequest:(NSFetchRequest*)fetchRequest sectionName:(NSString*)sectionName delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc
{
    return [self fetchedResultsControllerForFetchRequest:fetchRequest
                                                   cache:[self description]
                                             sectionName:sectionName
                                                delegate:delegate
                               usingManagedObjectContext:moc];
}
@end