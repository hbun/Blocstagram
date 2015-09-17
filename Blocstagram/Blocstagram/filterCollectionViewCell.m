//
//  FilterCollectionViewCell.m
//  Blocstagram
//
//  Created by Husam Al-Ziab on 9/15/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "FilterCollectionViewCell.h"
#import "PostToInstagramViewController.h"

@interface FilterCollectionViewCell () <UICollectionViewDelegate>

@end

@implementation FilterCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
          }
    return self;
}



@end
