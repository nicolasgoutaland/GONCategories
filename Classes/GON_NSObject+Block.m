//
//  GON_NSObject+Block.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSObject+Block.h"

@interface NSObject ()
@end

@implementation NSObject (Block)

#pragma mark - Block
- (void)performBlockOnMainQueueAndWait:(void (^)(void))block
{
    dispatch_sync(dispatch_get_main_queue(), block);
}

- (void)performBlockOnMainQueue:(void (^)(void))block
{
    dispatch_async(dispatch_get_main_queue(), block);
}

- (void)performBlockInBackground:(void (^)(void))block
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), block);
}

- (void)performBlockInBackgroundAndWait:(void (^)(void))block
{
    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), block);
}

- (void)performBlockOnMainQueueAfterDelay:(NSTimeInterval)delay block:(void (^)(void))block
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_SEC), dispatch_get_main_queue(), block);
}

- (void)performBlockOnQueue:(dispatch_queue_t)queue afterDelay:(NSTimeInterval)delay block:(void (^)(void))block
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_SEC), queue, block);
}

@end