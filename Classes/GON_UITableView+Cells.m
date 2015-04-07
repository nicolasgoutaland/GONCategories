//
//  GON_UITableView+Cells.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UITableView+Cells.h"

@interface UITableView ()
@end

@implementation UITableView (Cells)
#pragma mark - Cells
- (void)insertRowAtIndexPath:(NSIndexPath *)indexPath withRowAnimation:(UITableViewRowAnimation)animation
{
    [self insertRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]
                withRowAnimation:animation];
}

- (void)deleteRowAtIndexPath:(NSIndexPath *)indexPath withRowAnimation:(UITableViewRowAnimation)animation
{
    [self deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]
                withRowAnimation:animation];
}

@end