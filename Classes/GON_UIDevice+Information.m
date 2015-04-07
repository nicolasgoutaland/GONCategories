//
//  GON_UIDevice+Information.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_UIDevice+Information.h"
#include <sys/types.h>
#include <sys/sysctl.h>

@implementation UIDevice(Information)
#pragma mark - Information
- (NSString *)platform
{
	size_t size;

	sysctlbyname("hw.machine", NULL, &size, NULL, 0);
	char *machine = malloc(size);
	sysctlbyname("hw.machine", machine, &size, NULL, 0);

	NSString *platform = [NSString stringWithCString:machine 
											encoding:NSUTF8StringEncoding];
	free(machine);

	return platform;
}

- (NSUInteger)coresCount
{
    size_t len;
    unsigned int ncpu;
    
    len = sizeof(ncpu);
    sysctlbyname ("hw.ncpu",&ncpu,&len,NULL,0);

    if (ncpu <= 1)
        return 1;

    return ncpu;
}
@end