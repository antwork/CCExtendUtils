//
//  NSString+CCValidate.h
//  CCExtendUtilsDemo
//
//  Created by apple on 14-4-10.
//  Copyright (c) 2014年 CodingCat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CCValidate)

+ (BOOL)ccIsValidateString:(NSString *)string;

- (BOOL)ccIsValidateString;

- (BOOL)ccIsAllNumber;

- (BOOL)ccIsValidatePhone;

- (BOOL)ccIsValidateEmail;

@end
