//
//  GON_NSManagedObject+PropertyDescription.m
//
//  Created by Nicolas Goutaland on 14/08/15.
//  Copyright (c) 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSManagedObject+PropertyDescription.h"

@implementation NSManagedObject (PropertyDescription)
#pragma mark PropertyDescription
+ (NSArray *)propertiesDescriptionForAttributes:(NSArray*)attributesName inManagedObjectContext:(NSManagedObjectContext*)moc
{
    NSMutableArray *propertiesDescription = [[NSMutableArray alloc] init];
    
    for (NSString *attribute in attributesName)
    {
        [propertiesDescription addObject:[self propertyDescriptionForAttribute:attribute
                                                        inManagedObjectContext:moc]];
    }

    return propertiesDescription;
}

+ (NSPropertyDescription*)propertyDescriptionForAttribute:(NSString*)attributeName inManagedObjectContext:(NSManagedObjectContext*)moc
{
    return [[[self entityDescription:moc] propertiesByName] objectForKey:attributeName];
}

+ (NSEntityDescription*)entityDescription:(NSManagedObjectContext*)moc
{
    return [NSEntityDescription entityForName:[self description]
                       inManagedObjectContext:moc];
}
@end