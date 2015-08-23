//
//  DataSource.h
//  Blocstagram
//
//  Created by Husam Al-Ziab on 8/23/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSource : NSObject

+ (instancetype) sharedInstance;
@property (nonatomic, strong, readonly) NSArray *mediaItems;

@end
