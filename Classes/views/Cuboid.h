//
//  Cuboid.h
//  2013-02-07
//
//  Created by Dennis Yang on 13-2-7.
//  Copyright (c) 2013年 Dennis Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Cuboid;

@protocol CuboidDelegate <NSObject>
- (void)didSelectedCuboid:(Cuboid *)cuboid;
@end

@interface Cuboid : UIView

@property (nonatomic) id<CuboidDelegate> delegate;
@property (nonatomic) NSInteger index;

@property (nonatomic) UIImageView *igv;
@property (nonatomic) UILabel *tlb;
@property (nonatomic) UILabel *dib;

@end
