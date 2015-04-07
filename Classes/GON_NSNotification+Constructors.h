//
//  GON_NSNotification+Constructors.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSNotification(Constructors)
/* Build a notification with given name and given sender, building user info with anObject and key */
+ (NSNotification*)notificationWithName:(NSString *)name object:(id)notificationSender withObject:(id)object forKey:(id)key;
@end
