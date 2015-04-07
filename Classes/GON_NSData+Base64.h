//
//  GON_NSData+Base64.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSData(Base64)
/* Return a base 64 encoded string from NSData */
- (NSString *)base64EncodedString;
@end
