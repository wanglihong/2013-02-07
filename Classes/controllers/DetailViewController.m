//
//  DetailViewController.m
//  2013-02-07
//
//  Created by Dennis Yang on 13-2-8.
//  Copyright (c) 2013年 Dennis Yang. All rights reserved.
//

#import "DetailViewController.h"

#import "UIImageView+WebCache.h"

#import "Tools.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize party;

- (id)init
{
    self = [super init];
    if (self) {
        banner = [[Banner alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height/4)];
        banner.backgroundColor = [UIColor cyanColor];
        [self.view addSubview:banner];
        
        content = [[Content alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/4, self.view.frame.size.width, self.view.frame.size.height*2/4)];
        [self.view addSubview:content];
        
        self.view.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self reloadBanner];
}

- (void)reloadBanner {
    [banner.igv setImageWithURL:[NSURL URLWithString:IMAGE(self.party.partyIconId)]];
    banner.tlb.text = [Tools timeWithDate:self.party.partyDate];
    banner.dib.text = self.party.partyPlace;
    content.ttv.text = self.party.partyIntroduce;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
