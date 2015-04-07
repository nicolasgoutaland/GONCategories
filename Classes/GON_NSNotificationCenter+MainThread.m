//
//  GON_NSNotificationCenter+MainThread.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSNotificationCenter+MainThread.h"

@implementation NSNotificationCenter(MainThread)
#pragma mark - MainThread
- (void)postNotificationOnMainThread:(NSNotification *)notification
{
	if ([NSThread isMainThread])
	{	
		[self postNotification:notification];
	}
	else
	{
		[self performSelectorOnMainThread:@selector(postNotification:) 
							   withObject:notification 
							waitUntilDone:NO];
	}
}

- (void)postNotificationNameOnMainThread:(NSString *)notificationName object:(id)notificationSender
{
	NSNotification *notification = [NSNotification notificationWithName:notificationName
																 object:notificationSender
															   userInfo:nil];

	[self postNotificationOnMainThread:notification];
}

- (void)postNotificationNameOnMainThread:(NSString *)notificationName object:(id)notificationSender userInfo:(NSDictionary *)userInfo
{
	NSNotification *notification = [NSNotification notificationWithName:notificationName
																 object:notificationSender
															   userInfo:userInfo];

	[self postNotificationOnMainThread:notification];
}

- (void)postNotificationOnMainThread:(NSNotification *)notification waitUntilDone:(BOOL)wait
{
	if ([NSThread isMainThread])
	{	
		[self postNotification:notification];
	}
	else
	{
		[self performSelectorOnMainThread:@selector(postNotification:) 
							   withObject:notification 
							waitUntilDone:wait];
	}
}

- (void)postNotificationNameOnMainThread:(NSString *)notificationName object:(id)notificationSender waitUntilDone:(BOOL)wait
{
	NSNotification *notification = [NSNotification notificationWithName:notificationName
																 object:notificationSender
															   userInfo:nil];
	
	[self postNotificationOnMainThread:notification
						 waitUntilDone:wait];
}

- (void)postNotificationNameOnMainThread:(NSString *)notificationName object:(id)notificationSender userInfo:(NSDictionary *)userInfo waitUntilDone:(BOOL)wait
{
	NSNotification *notification = [NSNotification notificationWithName:notificationName
																 object:notificationSender
															   userInfo:userInfo];
	
	[self postNotificationOnMainThread:notification
						 waitUntilDone:wait];
}
@end