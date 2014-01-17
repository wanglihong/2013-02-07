//
//  Party.m
//  Red-PA
//
//  Created by Dennis Yang on 12-9-5.
//  Copyright (c) 2012年 Dennis Yang. All rights reserved.
//

#import "Party.h"

@implementation Party

@synthesize partyId;
@synthesize partyName;
@synthesize partyTitle;
@synthesize partyDate;
@synthesize partyPlace;
@synthesize partyIntroduce;
@synthesize partyTheme;
@synthesize partyIconId;

@synthesize partyPrevious;
@synthesize partyJoined;
//@synthesize sponsor;
@synthesize images;
@synthesize entrepreneur;
/*
- (void)set_Entrepreneur:(NSDictionary *)_entrepreneur
{
    if (_entrepreneur != entrepreneur) {
        [entrepreneur release];
        entrepreneur = [_entrepreneur retain];
        self.sponsor = [[[People alloc] init] autorelease];
        self.sponsor.peopleId = [entrepreneur objectForKey:@"id"];
        self.sponsor.peopleNickName = [entrepreneur objectForKey:@"name"];
        self.sponsor.peopleHeaderURL = [entrepreneur objectForKey:@"icon"];
    }
}
*/

@end
