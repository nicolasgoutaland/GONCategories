//
//  GON_NSObject+Block.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSObject (Block)

/* Perfom a block on main queue, no delay. Dispatch is synchrone */
- (void)performBlockOnMainQueueAndWait:(void (^)(void))block;

/* Perfom a block on main queue, no delay. Dispatch is asynchrone */
- (void)performBlockOnMainQueue:(void (^)(void))block;

/* Perform a block on main queue, after delay */
- (void)performBlockOnMainQueueAfterDelay:(NSTimeInterval)delay block:(void (^)(void))block;

/* Perfom a block on background queue, no delay. Dispatch is asynchrone */
- (void)performBlockInBackground:(void (^)(void))block;

/* Perfom a block on background queue, no delay. Dispatch is synchrone */
- (void)performBlockInBackgroundAndWait:(void (^)(void))block;

/* Perform a block on given queue, after delay */
- (void)performBlockOnQueue:(dispatch_queue_t)queue afterDelay:(NSTimeInterval)delay block:(void (^)(void))block;

@end
