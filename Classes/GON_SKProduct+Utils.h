//
//  GON_SKProduct+Utils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//
#import <StoreKit/StoreKit.h>

@interface SKProduct (Utils)
/* Return localized price to be displayed to user */
- (NSString *)localizedPrice;
@end
