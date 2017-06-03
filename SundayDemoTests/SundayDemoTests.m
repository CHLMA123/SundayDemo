//
//  SundayDemoTests.m
//  SundayDemoTests
//
//  Created by MACHUNLEI on 2017/6/3.
//  Copyright © 2017年 MACHUNLEI. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface SundayDemoTests : XCTestCase

@end

@implementation SundayDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

/**
 普通方法测试: 点击左边图标单独运行这个测试用例，也可以在导航栏里单独运行。
 *
 如何判断一个测试用例成功或者失败呢？XCTest使用断言来实现。
 最基本的断言:
     XCTAssert(expression, format...) 表示如果expression满足，则测试通过，否则对应format的错误。
 还有一个用来直接Fail的断言
     XCTFail(format...)
 其他一些常用的断言
     XCTAssertTrue(expression, format...)
     XCTAssertFalse(expression, format...)
     XCTAssertEqual(expression1, expression2, format...)
     XCTAssertNotEqual(expression1, expression2, format...)
     XCTAssertEqualWithAccuracy(expression1, expression2, accuracy, format...)
     XCTAssertNotEqualWithAccuracy(expression1, expression2, accuracy, format...)
     XCTAssertNil(expression, format...)
     XCTAssertNotNil(expression, format...)
 */
// ViewController有这个方法用来生成10以内的随机数,于是，测试方法为:
-(void)testModelFunc_randomLessThanTen{
    ViewController * model = [[ViewController alloc] init];
    NSInteger num = [model randomLessThanTen];
    XCTAssert(num<10,@"num should less than 10");
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

// 所谓性能测试，主要就是评估一段代码的运行时间，XCTest的性能的测试利用如下格式
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
