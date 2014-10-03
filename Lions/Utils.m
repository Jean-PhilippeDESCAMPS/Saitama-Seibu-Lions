//
//  Utils.m
//  Lions
//
//  Created by Jean-Philippe DESCAMPS on 02/10/2014.
//  Copyright (c) 2014 Jean-Philippe DESCAMPS. All rights reserved.
//

#import "Utils.h"

@implementation Utils

+ (NSDate *)dateFromString:(NSString *)dateString withFormat:(NSString *)format {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"m dd, yyyy"];
    return [dateFormatter dateFromString:dateString];
}

+ (NSString *)stringFromDate:(NSDate *)date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:[NSLocale currentLocale]];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    return [dateFormatter stringFromDate:date];
}

@end
