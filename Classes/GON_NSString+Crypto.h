//
//  GON_NSString+Crypto.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSString (Crypto)
/* Return hashed SHA256 string */
- (NSString *)SHA256;

/* Return hashed SHA256 base on string converted to utf16 */
- (NSString *)utf16SHA256;

/* Return hashed MD5 string */
- (NSString *)MD5;

/* Return hashed MD5 base on string converted to utf16 */
- (NSString *)utf16MD5;
@end
