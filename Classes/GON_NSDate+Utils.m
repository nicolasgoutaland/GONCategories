//
//  GON_NSDate+Utils.m
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//

#import "GON_NSDate+Utils.h"

@implementation NSDate (Utils)
#pragma mark - Class utils
static NSCalendar *calendar;
+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        calendar = [NSCalendar autoupdatingCurrentCalendar];
    });
}

#pragma mark - Class constructors
+ (instancetype)yesterday
{
    return [[self today] yesterday];
}

+ (instancetype)today
{
    return [NSDate date];
}

+ (instancetype)tomorrow
{
    return [[self today] tomorrow];
}

#pragma mark - Constructors
- (NSDate *)yesterday
{
    return [self dateByAddingDays:-1];
}

- (NSDate *)tomorrow
{
    return [self dateByAddingDays:1];
}

- (NSDate *)onlyDate
{
    return [calendar dateFromComponents:[calendar components:NSCalendarUnitYearMonthDay fromDate:self]];
}

#pragma mark - Utils
- (NSDate *)dateByAddingDays:(NSInteger)days
{
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:days];

    return [calendar dateByAddingComponents:components
                                     toDate:self
                                    options:0];
}

#pragma mark - Conversions
- (NSDate *)convertLocalTimeDateToGMTDate
{
    NSTimeZone *tz = [NSTimeZone defaultTimeZone];
    NSInteger seconds = -[tz secondsFromGMTForDate:self];

    return [NSDate dateWithTimeInterval:seconds sinceDate:self];
}

- (NSDate *)convertGMTDateToLocalTimeDate
{
    NSTimeZone *tz = [NSTimeZone defaultTimeZone];
    NSInteger seconds = [tz secondsFromGMTForDate: self];

    return [NSDate dateWithTimeInterval:seconds sinceDate:self];
}

#pragma mark - Tests
- (BOOL)isYesterday
{
    return [self isEqualToDateIgnoringTime:[[self class] yesterday]];
}

- (BOOL)isToday
{
    return [self isEqualToDateIgnoringTime:[[self class] today]];
}

- (BOOL)isTomorrow
{
    return [self isEqualToDateIgnoringTime:[[self class] tomorrow]];
}

#pragma mark - Comparison
- (BOOL)isEqualToDateIgnoringTime:(NSDate *)date
{
    NSDateComponents *selfComponents = [calendar components:NSCalendarUnitYearMonthDay fromDate:self];
    NSDateComponents *dateComponents = [calendar components:NSCalendarUnitYearMonthDay fromDate:date];

    return ((selfComponents.year == dateComponents.year) &&
            (selfComponents.month == dateComponents.month) &&
            (selfComponents.day == dateComponents.day));
}


@end