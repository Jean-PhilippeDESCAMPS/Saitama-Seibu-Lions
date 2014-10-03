//
//  Utils.h
//  Lions
//
//  Created by Jean-Philippe DESCAMPS on 02/10/2014.
//  Copyright (c) 2014 Jean-Philippe DESCAMPS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utils : NSObject

+ (NSDate *)dateFromString:(NSString *)dateString withFormat:(NSString *)format;

+ (NSString *)stringFromDate:(NSDate *)date;

@end
