//
//  MyAPP2Tests.m
//  MyAPP2Tests
//
//  Created by LiuGen on 2018/8/23.
//  Copyright © 2018年 Test. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
@interface MyAPP2Tests : XCTestCase

@end

@implementation MyAPP2Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
//    XCTAssert(1>0,@"sss");
    
    
}
-(void)testVCStart
{
    ViewController *vc = [[ViewController alloc] init];
    [vc actionForButton];
}
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
