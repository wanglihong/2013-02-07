//
//  LJParser.h
//  NetworkApplication
//
//  Created by Dennis Yang on 12-10-29.
//  Copyright (c) 2012年 Dennis Yang. All rights reserved.
//

#import "Party.h"

@interface LJParser : NSObject

+ (LJParser *)sharedParser;

- (NSMutableArray *)partiesWithData:(NSDictionary *)dic;

@end
