//
//  MainRightView.h
//  2013-02-07
//
//  Created by Dennis Yang on 13-2-7.
//  Copyright (c) 2013年 Dennis Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Cuboid.h"

@class MainRightView;

@protocol MainRightViewDelegate <NSObject>
- (void)mainRightView:(MainRightView *)view didSelectCuboid:(Cuboid *)cuboid;
@end

@interface MainRightView : UITableView <UITableViewDataSource, UITableViewDelegate, CuboidDelegate>

@property (nonatomic) id<MainRightViewDelegate> rightViewDelegate;
@property (nonatomic) NSMutableArray *array;

@end
