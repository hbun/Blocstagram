//
//  MediaTableCellViewTests.m
//  Blocstagram
//
//  Created by Husam Al-Ziab on 9/21/15.
//  Copyright © 2015 Bloc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MediaTableViewCell.h"
#import "Media.h"
#import "FeedController.h"
#import "ImagesTableViewController.h"
#import "OCMock.h"
#import "OCMMacroState.h"
#import "OCMStubRecorder.h"
#import "OCMockObject.h"

@interface MediaTableCellViewTests : XCTestCase

@end

@implementation MediaTableCellViewTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}



- (void) testThatHeightForMediaItemWidthWorks {
    //+heightForMediaItem:width:]
    
    id mockMediaItem = OCMClassMock([Media class]);
    id mockCell = OCMClassMock([MediaTableViewCell class]);

    MediaTableViewCell *cell = [[MediaTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"layoutCell"];
    cell.overrideTraitCollection = cell.traitCollection;
    
    cell.mediaItem =  mockMediaItem; 

    
    NSDictionary *images = @{@"image1" : [UIImage imageNamed:@"1.jpg"],
                             @"image2" : [UIImage imageNamed:@"2.jpg"],
                             @"image3" : [UIImage imageNamed:@"3.jpg"]};
    
    Media *mediaItem = [[mockMediaItem alloc] initWithDictionary:images];
    CGFloat height;
    
    CGFloat width = CGRectGetWidth(cell.frame);
//    height = [MediaTableViewCell heightForMediaItem:mockMediaItem width:width traitCollection:cell.overrideTraitCollection];
    OCMStub([mockCell heightForMediaItem:mockMediaItem width:width traitCollection:cell.overrideTraitCollection]).andReturn(height);
    
    CGFloat cellHeight = CGRectGetHeight(cell.frame);
    CGFloat cellViewHeight = cell.viewForBaselineLayout.frame.size.height;
    
    
    
    CGFloat imageHeight = mediaItem.image.size.height;
    
    XCTAssertEqual(cellHeight, height);
    XCTAssertEqual(cellHeight, cellViewHeight);
    XCTAssertEqual(cellHeight, imageHeight);
}


- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
