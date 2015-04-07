//
//  GON_NSString+SQL.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSString+SQL.h"

@implementation NSString (SQL)
#pragma mark - SQL
- (NSString*)cleanedSQLValue
{
	return [self stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
}

@end
