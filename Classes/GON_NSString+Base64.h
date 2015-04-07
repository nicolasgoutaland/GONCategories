//
//  GON_NSString+Base64.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//


@interface NSString(Base64)
/* Return data from string, assuming that's a base 64 encoded one */
- (NSData *)dataFromBase64String;
@end
