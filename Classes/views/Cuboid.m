//
//  Cuboid.m
//  2013-02-07
//
//  Created by Dennis Yang on 13-2-7.
//  Copyright (c) 2013年 Dennis Yang. All rights reserved.
//

#import "Cuboid.h"

@implementation Cuboid

@synthesize delegate;
@synthesize index;

@synthesize igv;
@synthesize tlb;
@synthesize dib;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = DeepSkyBlue;
        
        self.igv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        self.igv.contentMode = UIViewContentModeScaleAspectFill;
        self.igv.backgroundColor = [UIColor clearColor];
        self.igv.clipsToBounds = YES;
        self.igv.alpha = .05;
        [self addSubview:self.igv];
        
        self.tlb = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 0.1, frame.size.height * 0.4, frame.size.width * 0.7, frame.size.height*0.2)];
        self.tlb.textColor = [UIColor whiteColor];
        self.tlb.backgroundColor = [UIColor clearColor];
        self.tlb.font = [UIFont boldSystemFontOfSize:12.0];
        [self addSubview:self.tlb];
        
        self.dib = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 0.1, frame.size.height * 0.6, frame.size.width * 0.7, frame.size.height*0.2)];
        self.dib.textColor = [UIColor whiteColor];
        self.dib.backgroundColor = [UIColor clearColor];
        self.dib.font = [UIFont systemFontOfSize:10.0];
        [self addSubview:self.dib];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.backgroundColor = SkyBlue;
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self performSelector:@selector(cancelHighLight) withObject:nil afterDelay:0.2];
    [self performSelector:@selector(handelTouch) withObject:nil afterDelay:0.2];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
	[self performSelector:@selector(cancelHighLight) withObject:nil afterDelay:0.2];
}

- (void)cancelHighLight {
    self.backgroundColor = DeepSkyBlue;
}

- (void)handelTouch {
    if ([delegate respondsToSelector:@selector(didSelectedCuboid:)]) {
        [delegate didSelectedCuboid:self];
    }
}

@end
