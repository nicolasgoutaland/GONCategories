//
//  GON_NSURL+Split.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface NSURL (Split)
/* Compute an array of url based on baseURL, with concatened values
 * value are converted to string using description
 * This method will add object in values array until url length reach given limit.
 * When limit is reached, a new URL is computed.
 */
+ (NSArray *)computeURLsFromBase:(NSString *)baseURLStr addingValues:(id <NSFastEnumeration>)values separator:(NSString *)separator maxLength:(NSInteger)maxLength;

/* Compute urls based on baseURL, with concatened values.
 * value are converted to string using description
 * For each computed url, block will be called, with computed url and concatened values.
 * The block can return an object.
 * Method result will contained all returned objects computed by block.
 * Usefull to compute Server actions
 *
 */
+ (NSArray *)enumerateURLsFromBase:(NSString *)baseURLStr addingValues:(id <NSFastEnumeration>)values separator:(NSString *)separator maxLength:(NSInteger)maxLength block:(id (^)(NSString *urlStr, NSArray *contatenedValues))block;
@end
