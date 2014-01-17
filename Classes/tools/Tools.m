//
//  Tools.m
//  Red-PA
//
//  Created by Dennis Yang on 12-9-11.
//  Copyright (c) 2012年 Dennis Yang. All rights reserved.
//

#import "Tools.h"
#import <QuartzCore/QuartzCore.h>

@implementation Tools

+ (NSDate *)dateFromString:(NSString *)dateString
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"]];
    formatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'Z";
    
    return [formatter dateFromString:[NSString stringWithFormat:@"%@GMT+00:00", dateString]];
}

+ (NSString *)timeWithDate:(NSString *)dateString
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    formatter.dateFormat = @"yyyy-MM-dd HH:mm";
    
    return [formatter stringFromDate:[Tools dateFromString:dateString]];
}

@end
