//
//  MainRightView.m
//  2013-02-07
//
//  Created by Dennis Yang on 13-2-7.
//  Copyright (c) 2013年 Dennis Yang. All rights reserved.
//

#import "MainRightView.h"

#import "Party.h"
#import "AppDelegate.h"

#import "UIImageView+WebCache.h"

#import "DetailViewController.h"

@implementation MainRightView

@synthesize rightViewDelegate;
@synthesize array;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.contentInset = UIEdgeInsetsMake(15, 0, 15, 0);
        self.separatorStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        self.showsVerticalScrollIndicator = NO;
        self.dataSource = self;
        self.delegate = self;
        self.rowHeight = 100;
    }
    return self;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    Cuboid *cuboid = (Cuboid *)[cell viewWithTag:100];
    if (!cuboid) {
        cuboid = [[Cuboid alloc] initWithFrame:CGRectMake(20, 5, self.frame.size.width - 20 * 2, 90)];
        cuboid.tag = 100;
        cuboid.delegate = self;
        [cell addSubview:cuboid];
    }
    
    Party *party = [array objectAtIndex:indexPath.row];
    [cuboid.igv setImageWithURL:IMAGE(party.partyIconId)];
    [cuboid.tlb setText:party.partyTitle];
    [cuboid.dib setText:party.partyIntroduce];
    [cuboid setIndex:indexPath.row];
    
    return cell;
}

#pragma mark - CuboidDelegate

- (void)didSelectedCuboid:(Cuboid *)cuboid {
    if ([rightViewDelegate respondsToSelector:@selector(mainRightView:didSelectCuboid:)]) {
        [rightViewDelegate mainRightView:self didSelectCuboid:cuboid];
    }
}

@end
