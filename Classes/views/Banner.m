//
//  Banner.m
//  2013-02-07
//
//  Created by Dennis Yang on 13-2-8.
//  Copyright (c) 2013年 Dennis Yang. All rights reserved.
//

#import "Banner.h"

@implementation Banner

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.igv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        self.igv.contentMode = UIViewContentModeScaleAspectFill;
        self.igv.backgroundColor = [UIColor clearColor];
        self.igv.clipsToBounds = YES;
        self.igv.alpha = 1;
        [self addSubview:self.igv];
        
        self.tlb = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 0.1, frame.size.height * 0.4, frame.size.width * 0.7, frame.size.height*0.2)];
        self.tlb.textColor = [UIColor whiteColor];
        self.tlb.backgroundColor = [UIColor clearColor];
        self.tlb.font = [UIFont boldSystemFontOfSize:12.0];
        self.tlb.shadowOffset = CGSizeMake(-1, -1);
        self.tlb.shadowColor = [UIColor colorWithWhite:0 alpha:.5];
        [self addSubview:self.tlb];
        
        self.dib = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 0.1, frame.size.height * 0.6, frame.size.width * 0.8, frame.size.height*0.2)];
        self.dib.numberOfLines = 2;
        self.dib.lineBreakMode = NSLineBreakByWordWrapping;
        self.dib.textColor = [UIColor whiteColor];
        self.dib.backgroundColor = [UIColor clearColor];
        self.dib.font = [UIFont boldSystemFontOfSize:10.0];
        self.dib.shadowOffset = CGSizeMake(-1, -1);
        self.dib.shadowColor = [UIColor colorWithWhite:0 alpha:.5];
        [self addSubview:self.dib];
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
