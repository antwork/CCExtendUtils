//
//  CCValidatePhoneTextField.m
//  CCExtendUtilsDemo
//
//  Created by apple on 14-4-10.
//  Copyright (c) 2014年 CodingCat. All rights reserved.
//

#import "CCValidatePhoneTextField.h"

@implementation CCValidatePhoneTextField

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (BOOL)ccValidate {
    NSString *text = [self text];
    return [text ccIsValidatePhone];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
