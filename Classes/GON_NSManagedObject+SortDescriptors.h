//
//  GON_NSManagedObject+SortDescriptors.h
//
//  Created by Nicolas Goutaland on 14/08/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSManagedObject (SortDescriptors)
/* Must be implemented in subclasses to provide an array of NSSortDescriptors used in fetch request */
+ (NSArray *)sortDescriptors;
@end
