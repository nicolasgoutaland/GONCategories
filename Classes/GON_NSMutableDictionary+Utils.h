//
//  GON_NSMutableDictionary+Utils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSMutableDictionary(Utils)
/* Same as setObject: forKey:, but using [NSNull null] if object is nil */
- (void)setObjectOrNull:(id)object forKey:(id)key;
@end
