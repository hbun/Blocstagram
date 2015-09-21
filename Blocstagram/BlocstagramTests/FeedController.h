//
//  FeedController.m
//  Blocstagram
//
//  Created by Husam Al-Ziab on 9/21/15.
//  Copyright © 2015 Bloc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Media.h"

@interface FeedController : NSObject

- (instancetype)mediaItem:(Media*)array;
-(CGFloat) width;
-(Media*) mediaItem;


@end
