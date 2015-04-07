//
//  GON_UITableView+Reload.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UITableView+Reload.h"

@implementation UITableView(Reload)
#pragma mark - Reload
- (void)reloadVisibleRowsWithRowAnimation:(UITableViewRowAnimation)animation
{
	[self reloadRowsAtIndexPaths:self.indexPathsForVisibleRows
				withRowAnimation:animation];
}

- (void)reloadRowAtIndexPath:(NSIndexPath*)anIndexPath withRowAnimation:(UITableViewRowAnimation)animation
{
	[self reloadRowsAtIndexPaths:[NSArray arrayWithObject:anIndexPath]
				withRowAnimation:animation];
}
@end