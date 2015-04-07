//
//  GON_NSURL+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSURL+Utils.h"

@implementation NSURL (Utils)
#pragma mark - Utils
- (NSDictionary *)queryParameters
{
    // Result
    NSMutableDictionary *res = [[NSMutableDictionary alloc] init];

    // Extract query
    NSString *query = [self query];
    
    // Split parameters
    NSArray *components = [query componentsSeparatedByString:@"&"];
    NSArray *subComponents;
    for (NSString *component in components)
    {
        // Extract subcomponents
        subComponents = [component componentsSeparatedByString:@"="];
        if (subComponents.count != 2)
            continue;

        // Hold result
        [res setObject:[subComponents lastObject]
                forKey:[subComponents firstObject]];
    }

    return res;
}

@end
