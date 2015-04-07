//
//  GON_NSDate+Utils.h
//
//  Created by Nicolas Goutaland on 04/04/15.
//  Copyright 2015 Nicolas Goutaland. All rights reserved.
//
//  All these methods are using [NSCalendar autoupdatingCurrentCalendar] calendar
//  When performing dates comparison, be sure date are on the same timezone

#define NSCalendarUnitYearMonthDay      NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay

@interface NSDate (Utils)
/* Yesterday constructor */
+ (instancetype)yesterday;

/* Today constructor */
+ (instancetype)today;

/* Tomorrow constructor */
+ (instancetype)tomorrow;

/* Tells is date is Yesterday */
- (BOOL)isYesterday;

/* Tells is date is Today */
- (BOOL)isToday;

/* Tells is date is Tomorrow */
- (BOOL)isTomorrow;

/* Create a new date by adding given days */
- (NSDate *)dateByAddingDays:(NSInteger)days;

/* Build yesterday date from date, keeping hour */
- (NSDate *)yesterday;

/* Build tomorrow date from date, keeping hour */
- (NSDate *)tomorrow;

/* Build an return a date, stripping hour informations */
- (NSDate *)onlyDate;

/* Convert local time date to gmt one */
- (NSDate *)convertLocalTimeDateToGMTDate;

/* Convert date to local time one, assuming date is a gmt one */
- (NSDate *)convertGMTDateToLocalTimeDate;

/* Compare both date, ignoring time informations */
- (BOOL)isEqualToDateIgnoringTime:(NSDate *)date;
@end
