//
//  MainLeftView.m
//  2013-02-07
//
//  Created by Dennis Yang on 13-2-7.
//  Copyright (c) 2013年 Dennis Yang. All rights reserved.
//

#import "MainLeftView.h"

@implementation MainLeftView

@synthesize party;

@synthesize lbe1;
@synthesize lbe2;
@synthesize lbe3;
@synthesize lbe4;

@synthesize lbe5;
@synthesize lbe6;
@synthesize lbe7;
@synthesize lbe8;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
        self.lbe1 = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 0.1, frame.size.height * 0.02, frame.size.width * 0.8, frame.size.height * 0.12)];
        self.lbe1.textColor = [UIColor whiteColor];
        self.lbe1.backgroundColor = [UIColor clearColor];
        self.lbe1.font = [UIFont boldSystemFontOfSize:64.0];
        [self addSubview:self.lbe1];
        
        self.lbe2 = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 0.1, frame.size.height * 0.14, frame.size.width * 0.8, frame.size.height * 0.03)];
        self.lbe2.textColor = [UIColor whiteColor];
        self.lbe2.backgroundColor = [UIColor clearColor];
        self.lbe2.font = [UIFont systemFontOfSize:14.0];
        [self addSubview:self.lbe2];
        
        self.lbe3 = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 0.1, frame.size.height * 0.18, frame.size.width * 0.8, frame.size.height * 0.03)];
        self.lbe3.textColor = [UIColor whiteColor];
        self.lbe3.backgroundColor = [UIColor clearColor];
        self.lbe3.font = [UIFont systemFontOfSize:14.0];
        [self addSubview:self.lbe3];
        
        self.lbe4 = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 0.1, frame.size.height * 0.22, frame.size.width * 0.8, frame.size.height * 0.03)];
        self.lbe4.textColor = [UIColor whiteColor];
        self.lbe4.backgroundColor = [UIColor clearColor];
        self.lbe4.font = [UIFont systemFontOfSize:14.0];
        [self addSubview:self.lbe4];
        
        
        
        self.lbe5 = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 0.1, frame.size.height * 0.82, frame.size.width * 0.15, frame.size.height * 0.01)];
        self.lbe5.backgroundColor = DeepSkyBlue;
        [self addSubview:self.lbe5];
        
        self.lbe6 = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 0.1, frame.size.height * 0.84, frame.size.width * 0.8, frame.size.height * 0.03)];
        self.lbe6.textColor = [UIColor whiteColor];
        self.lbe6.backgroundColor = [UIColor clearColor];
        self.lbe6.font = [UIFont systemFontOfSize:12.0];
        [self addSubview:self.lbe6];
        
        self.lbe7 = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 0.1, frame.size.height * 0.88, frame.size.width * 0.8, frame.size.height * 0.03)];
        self.lbe7.textColor = [UIColor whiteColor];
        self.lbe7.backgroundColor = [UIColor clearColor];
        self.lbe7.font = [UIFont systemFontOfSize:12.0];
        [self addSubview:self.lbe7];
        
        self.lbe8 = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 0.1, frame.size.height * 0.92, frame.size.width * 0.8, frame.size.height * 0.03)];
        self.lbe8.textColor = [UIColor whiteColor];
        self.lbe8.backgroundColor = [UIColor clearColor];
        self.lbe8.font = [UIFont systemFontOfSize:12.0];
        [self addSubview:self.lbe8];
    }
    return self;
}

- (void)reloadData {
    self.lbe1.text = @"99+";
    self.lbe2.text = @"个Catholic活动";
    self.lbe3.text = @"旅游｜钓鱼｜聚餐";
    self.lbe4.text = @"尽在国泰广告";
    
    self.lbe6.text = @"近期活动";
    self.lbe7.text = self.party.partyTitle;
    self.lbe8.text = self.party.partyDate;
}

@end
