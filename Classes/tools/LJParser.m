//
//  LJParser.m
//  NetworkApplication
//
//  Created by Dennis Yang on 12-10-29.
//  Copyright (c) 2012年 Dennis Yang. All rights reserved.
//

#import "LJParser.h"

#import "Party.h"

@implementation LJParser

static LJParser *_instance = nil;

+ (LJParser *)sharedParser {
    
    @synchronized(self){
		if (!_instance){
			_instance = [[LJParser alloc] init];
		}
	}
	
	return _instance;
}

- (NSMutableArray *)partiesWithData:(NSDictionary *)dic {
    
    NSMutableArray *allParty = [NSMutableArray arrayWithCapacity:0];
    NSArray *arr = [dic objectForKey:@"data"];
    
    for (int i = 0 ; i < arr.count; i++) {
        
        NSDictionary *d = [arr objectAtIndex:i];
        Party *p = [[Party alloc] init];
        p.partyId          = [d objectForKey:@"_id"];
        p.partyDate        = [d objectForKey:@"actived"];
        p.partyPlace       = [d objectForKey:@"address"];
        p.partyIntroduce   = [d objectForKey:@"description"];
        p.partyName        = [d objectForKey:@"name"];
        p.partyTitle       = [d objectForKey:@"title"];
        p.partyIconId      = [d objectForKey:@"icon"];
        p.partyJoined      = [[d objectForKey:@"join"] intValue];
        
        [allParty addObject:p];
    }
    
    return allParty;
}

@end
