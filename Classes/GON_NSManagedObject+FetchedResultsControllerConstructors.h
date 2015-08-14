//
//  GON_NSManagedObject+FetchedResultsControllerConstructors.h
//
//  Created by Nicolas Goutaland on 14/08/15.
//  Copyright (c) 2015 Nicolas Goutaland. All rights reserved.
//
#import <CoreData/CoreData.h>

@interface NSManagedObject (FetchedResultsControllerConstructors)
/* Return a configured FetchedResultsController */
+ (NSFetchedResultsController*)fetchedResultsControllerForFetchRequest:(NSFetchRequest*)fetchRequest delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return a configured FetchedResultsController using given cache */
+ (NSFetchedResultsController*)fetchedResultsControllerForFetchRequest:(NSFetchRequest*)fetchRequest cache:(NSString*)cache delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return a configured FetchedResultsController using given section name */
+ (NSFetchedResultsController*)fetchedResultsControllerForFetchRequest:(NSFetchRequest*)fetchRequest sectionName:(NSString*)sectionName delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return a configured FetchedResultsController using given cache and section name */
+ (NSFetchedResultsController*)fetchedResultsControllerForFetchRequest:(NSFetchRequest*)fetchRequest cache:(NSString*)cache sectionName:(NSString*)sectionName delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return a configured FetchedResultsController using a generated cache name */
+ (NSFetchedResultsController*)fetchedResultsControllerCachedForFetchRequest:(NSFetchRequest*)fetchRequest delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return a configured FetchedResultsController using a generated cache name and given section name */
+ (NSFetchedResultsController*)fetchedResultsControllerCachedForFetchRequest:(NSFetchRequest*)fetchRequest sectionName:(NSString*)sectionName delegate:(id <NSFetchedResultsControllerDelegate>)delegate usingManagedObjectContext:(NSManagedObjectContext*)moc;
@end
