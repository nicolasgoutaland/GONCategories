//
//  GON_NSManagedObject+FetchRequestConstructors.h
//
//  Created by Nicolas Goutaland on 14/08/15.
//  Copyright (c) 2015 Nicolas Goutaland. All rights reserved.
//


@interface NSManagedObject(FetchRequestConstructors)
/* Create fetch request to fetch one object using given key and value. Usefull to fetch objects on their uid key  */
+ (NSFetchRequest*)fetchRequestUsingValue:(id)value forKey:(NSString*)key returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch one object using given predicate 
 */
+ (NSFetchRequest*)fetchRequestUsingPredicate:(NSPredicate*)predicate returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch all objects for given entity.
 */
+ (NSFetchRequest*)fetchRequestForAllEntitiesReturningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch all objects using given predicate
 */
+ (NSFetchRequest*)fetchRequestForAllEntitiesUsingPredicate:(NSPredicate*)predicate returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch all objects for given entity and sort them.
 */
+ (NSFetchRequest*)fetchRequestForAllEntitiesUsingSortDescriptors:(NSArray*)sortDescriptors returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch all objects for given entity, using predicate and sort them.
 */
+ (NSFetchRequest*)fetchRequestForAllEntitiesUsingPredicate:(NSPredicate*)predicate usingSortDescriptors:(NSArray*)sortDescriptors returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch all objects for given entity. Class default sort descriptors are set.
 * You have to add a + (NSArray *)sortDescriptors method in your entity class to provide your own sort descriptors
 */
+ (NSFetchRequest*)fetchRequestForAllSortedEntitiesReturningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;

/* Create fetch request to fetch all objects using given predicate. Class default sort descriptors are set.
 * You have to add a + (NSArray *)sortDescriptors method in your entity class to provide your own sort descriptors
 */
+ (NSFetchRequest*)fetchRequestForAllSortedEntitiesUsingPredicate:(NSPredicate*)predicate returningAsFault:(BOOL)fault forManagedObjectContext:(NSManagedObjectContext*)moc;
@end
