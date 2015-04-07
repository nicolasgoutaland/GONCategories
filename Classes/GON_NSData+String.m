//
//  GON_NSData+String.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSData+String.h"

@implementation NSData(String)
#pragma mark - String
- (NSString *)hexaString
{
	NSString * hexaString = nil;
	
	// Remove <> and spaces
	hexaString = [[[[self description] stringByReplacingOccurrencesOfString:@"<" withString:@""]
                                       stringByReplacingOccurrencesOfString:@">" withString:@""]
                                       stringByReplacingOccurrencesOfString:@" " withString:@""];

	return hexaString;
}

- (NSString *)UTF8String
{
	NSString *UTF8String = [[NSString alloc] initWithData:self
												  encoding:NSUTF8StringEncoding];

	return UTF8String;
}
@end