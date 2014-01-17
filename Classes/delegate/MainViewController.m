//
//  MainViewController.m
//  2013-02-07
//
//  Created by Dennis Yang on 13-2-7.
//  Copyright (c) 2013年 Dennis Yang. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"

#import "MainLeftView.h"
#import "MainRightView.h"

#import "LJRequester.h"
#import "LJParser.h"

@interface MainViewController () <MainRightViewDelegate> {
    UIImageView *bgrd;
    UIScrollView *roll;
    MainLeftView *left;
    MainRightView *right;
    
    DetailViewController *detail;
}

@end

@implementation MainViewController

- (id)init
{
    self = [super init];
    if (self) {
        bgrd = [[UIImageView alloc] initWithFrame:self.view.bounds];
        [bgrd setContentMode:UIViewContentModeScaleAspectFit];
        [bgrd setImage:[UIImage imageNamed:@"bg.png"]];
        [self.view addSubview:bgrd];
        
        roll = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        [roll setContentSize:CGSizeMake(roll.frame.size.width * 2, roll.frame.size.height)];
        [roll setBackgroundColor:[UIColor clearColor]];
        [roll setShowsHorizontalScrollIndicator:NO];
        [roll setShowsVerticalScrollIndicator:NO];
        [roll setPagingEnabled:YES];
        [roll setBounces:NO];
        [self.view addSubview:roll];
        
        left = [[MainLeftView alloc] initWithFrame:self.view.bounds];
        [roll addSubview:left];
        
        right = [[MainRightView alloc] init];
        right.rightViewDelegate = self;
        [roll addSubview:right];
        
        left.frame = CGRectMake(roll.frame.origin.x, roll.frame.origin.y, roll.frame.size.width, roll.frame.size.height);
        right.frame = CGRectMake(roll.frame.size.width, roll.frame.origin.y, roll.frame.size.width, roll.frame.size.height);
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[LJRequester sharedRequester] setCallback:^(NSDictionary *dic) {
        [self reloadRight:dic];
        [self reloadLeft: dic];
    }];
    [[LJRequester sharedRequester] partyListFromPosition:0 withLength:100];
}

- (void)reloadRight:(NSDictionary *)dic
{
    right.array = [[LJParser sharedParser] partiesWithData:dic];
    [right reloadData];
}

- (void)reloadLeft:(NSDictionary *)dic
{
    left.party = [right.array objectAtIndex:0];
    [left reloadData];
}

#pragma mark -
#pragma mark - MainRightViewDelegate

- (void)mainRightView:(MainRightView *)view didSelectCuboid:(Cuboid *)cuboid
{
    detail = [[DetailViewController alloc] init];
    detail.party = [right.array objectAtIndex:cuboid.index];
    [self.view addSubview:detail.view];
    
    detail.view.frame = CGRectMake(0, -self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
    [UIView animateWithDuration:0.35 animations:^{
        detail.view.frame = self.view.frame;
        roll.frame = CGRectMake(roll.frame.origin.x, self.view.frame.size.height, roll.frame.size.width, roll.frame.size.height);
    } completion:^(BOOL finished) {
        right.contentOffset = CGPointMake(0, -right.contentInset.top);
    }];
    
    UISwipeGestureRecognizer *gestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe:)];
    gestureRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
    [detail.view addGestureRecognizer:gestureRecognizer];
}

- (void)swipe:(UISwipeGestureRecognizer *)recognizer {
    if (recognizer.direction == UISwipeGestureRecognizerDirectionUp) {
        [UIView animateWithDuration:0.35 animations:^{
            detail.view.frame = CGRectMake(0, -self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            roll.frame = self.view.bounds;
        } completion:^(BOOL finished) {
            [[[self.view subviews] lastObject] removeFromSuperview];
        }];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
