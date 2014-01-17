//
//  DetailViewController.h
//  2013-02-07
//
//  Created by Dennis Yang on 13-2-8.
//  Copyright (c) 2013年 Dennis Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Party.h"

#import "Banner.h"

#import "Content.h"

@interface DetailViewController : UIViewController {
    Banner *banner;
    Content *content;
}

@property (nonatomic) Party *party;

@end
