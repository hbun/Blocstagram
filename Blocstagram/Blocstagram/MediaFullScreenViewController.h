//
//  MediaFullScreenViewController.h
//  Blocstagram
//
//  Created by Husam Al-Ziab on 8/28/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Media;

@protocol MediaFullScreenViewControllerDelegate <NSObject>

- (void) shareTap:(UITapGestureRecognizer*)tap;

@end

@interface MediaFullScreenViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, weak) id <MediaFullScreenViewControllerDelegate> delegate;


- (instancetype) initWithMedia:(Media *)media;

-(void) centerScrollView;

@end
