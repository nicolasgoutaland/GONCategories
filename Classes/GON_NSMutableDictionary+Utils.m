//
//  GON_NSMutableDictionary+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSMutableDictionary+Utils.h"

@implementation NSMutableDictionary(Utils)
#pragma mark - Utils
- (void)setObjectOrNull:(id)object forKey:(id)key
{
    if (!object)
        [self setObject:[NSNull null] forKey:key];
    else
        [self setObject:object forKey:key];
}

@end