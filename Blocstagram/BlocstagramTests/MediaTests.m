//
//  MediaTests.m
//  Blocstagram
//
//  Created by Husam Al-Ziab on 9/20/15.
//  Copyright © 2015 Bloc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Media.h"

@interface MediaTests : XCTestCase

@end

@implementation MediaTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testThatMediaInitializationWorks {
    NSDictionary *sourceDictionary = @{@"id" : @"8765433",
                                       @"caption" : @{@"text" : @"This is the text"},
                                       @"user" : @{@"images" : @{@"standard_resolution": @{@"url" : @"http://www.example.com/example.jpg"}}},
                                       };
    
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testMedia.mediaURL, [NSURL URLWithString:sourceDictionary [@"images"][@"standard_resolution"][@"url"]], @"The Media URL should be equal");
    XCTAssertEqualObjects(testMedia.caption, [[sourceDictionary objectForKey:@"caption"] objectForKey:@"text"], @"The caption should be equal");
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
