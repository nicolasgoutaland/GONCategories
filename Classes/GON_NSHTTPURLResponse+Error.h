//
//  GON_NSHTTPURLResponse+Error.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#define NSHTTPURLResponse_Error_ERROR_DOMAIN @"NSHTTPURLResponse+Error.errorDomain"

@interface NSHTTPURLResponse (Error)
/* Generate an NSError object based on url response 
 * code                 : self.statusCode
 * localizedDescription : [NSHTTPURLResponse localizedStringForStatusCode:self.statusCode]
 * domain               : @"NSHTTPURLResponse+Error.errorDomain" ==> NSHTTPURLResponse_Error_ERROR_DOMAIN
 */
- (NSError *)error;

@property (nonatomic, readonly) BOOL hasError; // Tells if status code match an error
@end
