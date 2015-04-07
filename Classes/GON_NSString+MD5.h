//
//  GON_NSString+MD5.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSString (MD5)
/* Return hashed MD5 string */
- (NSString *)MD5;

/* Return hashed MD5 base on string converted to unicode */
- (NSString *)unicodeMD5;
@end
