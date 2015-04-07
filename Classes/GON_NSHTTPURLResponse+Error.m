//
//  GON_NSHTTPURLResponse+Error.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSHTTPURLResponse+Error.h"

@implementation NSHTTPURLResponse (Error)
#pragma mark - Error
- (NSError *)error
{
    return [NSError errorWithDomain:NSHTTPURLResponse_Error_ERROR_DOMAIN
                               code:self.statusCode
                           userInfo:@{
                                      NSLocalizedDescriptionKey : [NSHTTPURLResponse localizedStringForStatusCode:self.statusCode]
                                      }];
}

- (BOOL)hasError
{
    NSInteger centaineCode = self.statusCode / 100;
    
    return !(centaineCode == 1 ||
             centaineCode == 2 ||
             centaineCode == 3);
}
@end
