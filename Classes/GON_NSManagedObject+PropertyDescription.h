//
//  GON_NSManagedObject+PropertyDescription.h
//
//  Created by Nicolas Goutaland on 14/08/15.
//  Copyright (c) 2015 Nicolas Goutaland. All rights reserved.
//


@interface NSManagedObject (PropertyDescription)
/* Return NSPropertyDescription for current entity, describing given attribute name */
+ (NSPropertyDescription*)propertyDescriptionForAttribute:(NSString*)attributeName inManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return an array of NSPropertyDescription for current entity, describing given attributes name */
+ (NSArray *)propertiesDescriptionForAttributes:(NSArray*)attributesName inManagedObjectContext:(NSManagedObjectContext*)moc;

/* Return NSEntityDescription for current entity */
+ (NSEntityDescription*)entityDescription:(NSManagedObjectContext*)moc;
@end
