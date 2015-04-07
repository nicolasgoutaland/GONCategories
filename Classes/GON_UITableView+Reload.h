//
//  GON_UITableView+Reload.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

@interface UITableView(Reload)
/* Reload visible rows with given row animation. 
 * Same as: 
 * [self reloadRowsAtIndexPaths:self.indexPathsForVisibleRows
 *			   withRowAnimation:animation];
 */
- (void)reloadVisibleRowsWithRowAnimation:(UITableViewRowAnimation)animation;

/* Reload row at given index path with an animation 
 * Same as : 
 * [self reloadRowsAtIndexPaths:[NSArray arrayWithObject:anIndexPath]
 *			   withRowAnimation:animation];
 */
- (void)reloadRowAtIndexPath:(NSIndexPath*)anIndexPath withRowAnimation:(UITableViewRowAnimation)animation;

@end