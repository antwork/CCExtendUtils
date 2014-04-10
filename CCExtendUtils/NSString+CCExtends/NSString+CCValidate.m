//
//  NSString+CCValidate.m
//  CCExtendUtilsDemo
//
//  Created by apple on 14-4-10.
//  Copyright (c) 2014年 CodingCat. All rights reserved.
//

#import "NSString+CCValidate.h"

@implementation NSString (CCValidate)

+ (BOOL)ccIsValidateString:(NSString *)string {
    if (!string || ![string isKindOfClass:[NSString class]]) {
        return NO;
    }
    return [string ccIsValidateString];
}

- (BOOL)ccIsValidateString {
    NSString* tempText = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if ([tempText length] == 0) {
        return NO;
    }
    return YES;
}

- (BOOL)ccIsAllNumber {
    if (![self ccIsValidateString]) {
        return NO;
    }
    NSString* tempText = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSString *nameRegex =@"[0-9]+";
    NSPredicate *nameTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", nameRegex];
    BOOL isDecimalNumber=[nameTest evaluateWithObject:tempText];
    return isDecimalNumber;
}

// check mobile phone
- (BOOL)ccIsValidatePhone {
    //手机号以13， 15，18开头，八个 \d 数字字符
    NSString *phoneRegex = @"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    //    NSLog(@"phoneTest is %@",phoneTest);
    return [phoneTest evaluateWithObject:self];
}

- (BOOL)ccIsValidateEmail {
    // For some obscure reason, escaping the % in the directly in the format string (using %%) does not work and crashes at runtime! But creating the
    // regex outside and inserting it into the control string works. Are control strings in Objective-C really standard?
    // The following regex is the one used by Apple, e.g. in iOS mail. Thanks to Cédric Lüthi (0xced) for its extraction
    // (method -[NSString(NSEmailAddressString) mf_isLegalEmailAddress] in /System/Library/PrivateFrameworks/MIME.framework)
    NSString *emailRegex = @"^[[:alnum:]!#$%&'*+/=?^_`{|}~-]+((\\.?)[[:alnum:]!#$%&'*+/=?^_`{|}~-]+)*@[[:alnum:]-]+(\\.[[:alnum:]-]+)*(\\.[[:alpha:]]+)+$";
    
    NSPredicate *emailPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailPredicate evaluateWithObject:self];
}

@end
