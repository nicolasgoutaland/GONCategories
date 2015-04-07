//
//  GON_NSString+SQL.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSString (SQL)
/* Return cleaned version of SQL value by escaping ' characters */
- (NSString*)cleanedSQLValue;
@end
