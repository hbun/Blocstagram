//
//  ComposeCommentViewTests.m
//  Blocstagram
//
//  Created by Husam Al-Ziab on 9/20/15.
//  Copyright © 2015 Bloc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ComposeCommentView.h"

@interface ComposeCommentViewTests : XCTestCase

@end

@implementation ComposeCommentViewTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testThatSetTextWorks {
    
    ComposeCommentView *testCompose = [[ComposeCommentView alloc] init];
    testCompose.text = [NSString stringWithFormat:@"This is test text!"];
    
    ComposeCommentView *testComposeNoText = [[ComposeCommentView alloc] init];
    testComposeNoText.text = [NSString stringWithFormat:@""];
    
    XCTAssertTrue(testCompose.isWritingComment);
    XCTAssertFalse(testComposeNoText.isWritingComment);
    
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
