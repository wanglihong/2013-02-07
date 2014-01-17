//
//  Content.m
//  2013-02-07
//
//  Created by Dennis Yang on 13-4-15.
//  Copyright (c) 2013年 Dennis Yang. All rights reserved.
//

#import "Content.h"

@implementation Content

@synthesize ttv;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.ttv = [[UITextView alloc] initWithFrame:CGRectMake(10, 0, frame.size.width - 20, frame.size.height)];
        self.ttv.userInteractionEnabled = NO;
        self.ttv.contentInset = UIEdgeInsetsMake(20, 0, 20, 0);
        [self addSubview:self.ttv];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
