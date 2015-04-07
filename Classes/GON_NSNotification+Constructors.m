//
//  GON_NSNotification+Constructors.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSNotification+Constructors.h"

@implementation NSNotification(Constructors)
#pragma mark - Constructors
+ (NSNotification*)notificationWithName:(NSString *)aName object:(id)notificationSender withObject:(id)anObject forKey:(id)key
{
	NSDictionary *userInfo = [NSDictionary dictionaryWithObject:object
														 forKey:key];
	
	return [self notificationWithName:name
							   object:notificationSender 
							 userInfo:userInfo];
}
@end