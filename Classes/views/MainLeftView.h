//
//  MainLeftView.h
//  2013-02-07
//
//  Created by Dennis Yang on 13-2-7.
//  Copyright (c) 2013年 Dennis Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Party.h"

@interface MainLeftView : UIView

@property (nonatomic) Party *party;

@property (nonatomic) UILabel *lbe1;
@property (nonatomic) UILabel *lbe2;
@property (nonatomic) UILabel *lbe3;
@property (nonatomic) UILabel *lbe4;

@property (nonatomic) UILabel *lbe5;
@property (nonatomic) UILabel *lbe6;
@property (nonatomic) UILabel *lbe7;
@property (nonatomic) UILabel *lbe8;

- (void)reloadData;

@end
