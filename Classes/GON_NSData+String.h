//
//  GON_NSData+String.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSData(String)
/* Return data as an hexa string */
- (NSString *)hexaString;

/* Return data as an UFT8 encoded string */
- (NSString *)UTF8String;
@end
