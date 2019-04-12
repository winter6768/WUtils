//
//  WUtilsTests.m
//  WUtilsTests
//
//  Created by winter on 2019/3/29.
//  Copyright © 2019 winter. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WUtils/WUtils/WUtils.h"

@interface WUtilsTests : XCTestCase

@end

@implementation WUtilsTests

-(void)testDateUtils {
    NSDate *date = [NSDate date];
    NSLog(@"%@",[WDateUtils friendlyDisplayWithDate: date]);
    
    date = [WDateUtils dateWithString:@"2019-04-12 10:00:00" formatType:WDateTypeSeconds];
    NSLog(@"%@",[WDateUtils friendlyDisplayWithDate: date]);
    NSLog(@"星期 %ld",(long)[WDateUtils weekdayWithDate: date]);
    
    date = [WDateUtils dateWithString:@"2019-04-12 00:00:00" formatType:WDateTypeSeconds];
    NSLog(@"%@",[WDateUtils friendlyDisplayWithDate: date]);
    NSLog(@"星期 %ld",(long)[WDateUtils weekdayWithDate: date]);
    
    date = [WDateUtils dateWithString:@"2019-04-11 23:59:59" formatType:WDateTypeSeconds];
    NSLog(@"%@",[WDateUtils friendlyDisplayWithDate: date]);
    NSLog(@"星期 %ld",(long)[WDateUtils weekdayWithDate: date]);
    
    date = [WDateUtils dateWithString:@"2019-01-11 23:59:59" formatType:WDateTypeSeconds];
    NSLog(@"%@",[WDateUtils friendlyDisplayWithDate: date]);
    NSLog(@"星期 %ld",(long)[WDateUtils weekdayWithDate: date]);
    
    date = [WDateUtils dateWithString:@"2018-04-11 23:59:59" formatType:WDateTypeSeconds];
    NSLog(@"%@",[WDateUtils friendlyDisplayWithDate: date]);
    NSLog(@"星期 %ld",(long)[WDateUtils weekdayWithDate: date]);
}

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
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
