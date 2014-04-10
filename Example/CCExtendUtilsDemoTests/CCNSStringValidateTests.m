//
//  CCNSStringValidateTests.m
//  CCExtendUtilsDemo
//
//  Created by apple on 14-4-10.
//  Copyright (c) 2014年 CodingCat. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+CCValidate.h"

@interface CCNSStringValidateTests : XCTestCase

@end

@implementation CCNSStringValidateTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testValidateNSString
{
    NSString *str = nil;
    XCTAssertFalse([NSString ccIsValidateString:str], @"");
    
    str = @"";
    XCTAssertFalse([NSString ccIsValidateString:str], @"");
    
    str = @"1";
    XCTAssertTrue([NSString ccIsValidateString:str], @"");
}

- (void)testValidatePhone
{
    NSString *str = @"";
    XCTAssertFalse([str ccIsValidatePhone], @"");
    
    str = @"1";
    XCTAssertFalse([str ccIsValidatePhone], @"");
    
    str = @"13570979614";
    XCTAssertTrue([str ccIsValidatePhone], @"");
    
    str = @"135709796147";
    XCTAssertFalse([str ccIsValidatePhone], @"");
}

- (void)testValidateEmail
{
    NSString *str = @"";
    XCTAssertFalse([str ccIsValidateEmail], @"");
    
    str = @"1";
    XCTAssertFalse([str ccIsValidateEmail], @"");
    
    str = @"ant@126.com";
    XCTAssertTrue([str ccIsValidateEmail], @"");
    
    str = @"@126.";
    XCTAssertFalse([str ccIsValidateEmail], @"");
    
    str = @"123@";
    XCTAssertFalse([str ccIsValidateEmail], @"");
    
    str = @"@";
    XCTAssertFalse([str ccIsValidateEmail], @"");
    
    str = @"1@1";
    XCTAssertFalse([str ccIsValidateEmail], @"");
}

- (void)testValidateNumber
{
    NSString *str = @"";
    XCTAssertFalse([str ccIsAllNumber], @"");
    
    str = @"a";
    XCTAssertFalse([str ccIsAllNumber], @"");
    
    str = @"1";
    XCTAssertTrue([str ccIsAllNumber], @"");
    
    str = @"112341234";
    XCTAssertTrue([str ccIsAllNumber], @"");
}

@end
