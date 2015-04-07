//
//  GON_NSURL+Split.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSURL+Split.h"

@interface NSURL ()
@end

@implementation NSURL (Split)
#pragma mark - Split
+ (NSArray *)computeURLsFromBase:(NSString *)baseURLStr addingValues:(id <NSFastEnumeration>)values separator:(NSString *)separator maxLength:(NSInteger)maxLength
{
    // Urls
    NSMutableArray *urls = [NSMutableArray array];
    NSUInteger separatorLength = separator.length;
    NSString *valueStr;

    NSMutableString *computedURLStr = [[NSMutableString alloc] initWithString:baseURLStr];

    // Create requests
    for (NSString *value in values)
    {
        // Ensure that value will be a string
        valueStr = [[value description] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        if ((computedURLStr.length + valueStr.length + separatorLength) < maxLength)
        {
            [computedURLStr appendFormat:@"%@%@", valueStr, separator];
        }
        else
        {
            // Trim last separator
            [computedURLStr deleteCharactersInRange:NSMakeRange(computedURLStr.length-separatorLength, separatorLength)];

            // Hold request
            [urls addObject:[NSURL URLWithString:computedURLStr]];
            
            // Reset configuration
            computedURLStr = [[NSMutableString alloc] initWithString:baseURLStr];
            [computedURLStr appendFormat:@"%@%@", valueStr, separator];
        }
    }

    // Last one
    // Trim last separator
    [computedURLStr deleteCharactersInRange:NSMakeRange(computedURLStr.length-separatorLength, separatorLength)];

    // Hold request
    [urls addObject:[NSURL URLWithString:computedURLStr]];

	return urls;
}

+ (NSArray *)enumerateURLsFromBase:(NSString *)baseURLStr addingValues:(id <NSFastEnumeration>)values separator:(NSString *)separator maxLength:(NSInteger)maxLength block:(id (^)(NSString *urlStr, NSArray *contatenedValues))block
{
    // Result
    NSMutableArray *res = [NSMutableArray array];
    id object;
    NSString *valueStr;
    NSUInteger separatorLength = separator.length;
    
    NSMutableString *computedURLStr = [[NSMutableString alloc] initWithString:baseURLStr];
    NSMutableArray *concatenedValues = [[NSMutableArray alloc] init];

    // Create requests
    for (id value in values)
    {
        // Ensure that value will be a string
        valueStr = [[value description] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        if ((computedURLStr.length + valueStr.length + separatorLength) < maxLength)
        {
            [computedURLStr appendFormat:@"%@%@", valueStr, separator];
            [concatenedValues addObject:value];
        }
        else
        {
            // Trim last separator
            [computedURLStr deleteCharactersInRange:NSMakeRange(computedURLStr.length-separatorLength, separatorLength)];

            // Compute resulting object
            object = block(computedURLStr, concatenedValues);
            if (object)
                [res addObject:object];

            // Reset configuration
            computedURLStr = [[NSMutableString alloc] initWithString:baseURLStr];
            [computedURLStr appendFormat:@"%@%@", valueStr, separator];

            // Memory
            concatenedValues = [[NSMutableArray alloc] initWithObjects:value, nil];
        }
    }

    // Last one
    // Trim last separator
    [computedURLStr deleteCharactersInRange:NSMakeRange(computedURLStr.length-separatorLength, separatorLength)];

    // Compute resulting object
    object = block(computedURLStr, concatenedValues);
    if (object)
        [res addObject:object];

	return res;
}

@end