//
//  GON_NSNumber+Compare.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSArray+Utils.h"

@implementation NSNumber(Compare)
#pragma mark - Utils
- (NSNumber *)biggerNumber:(NSNumber *)anotherNumber
{
    NSNumber *rightOperand = anotherNumber;
    if (!rightOperand)
        rightOperand = @(0);
    
    if ([self compare:rightOperand] != NSOrderedAscending)
        return self;
    
    return rightOperand;
}

- (NSNumber *)smallerNumber:(NSNumber *)anotherNumber
{
    NSNumber *rightOperand = anotherNumber;
    if (!rightOperand)
        rightOperand = @(0);
    
    if ([self compare:rightOperand] != NSOrderedDescending)
        return self;
    
    return rightOperand;
}
@end