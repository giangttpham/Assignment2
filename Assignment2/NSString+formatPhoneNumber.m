//
//  NSString+formatPhoneNumber.m
//  Assignment2
//
//  Created by Tra` Beo' on 9/2/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import "NSString+formatPhoneNumber.h"

@implementation NSString (formatPhoneNumber)
- (NSString *) phoneFormat;
{
    NSString * textString = [self stringByReplacingOccurrencesOfString:@" " withString:@""];
    textString = [textString stringByReplacingOccurrencesOfString:@"-" withString:@""];

    NSString* formattedPhoneNumber = [NSString stringWithFormat: @"%@-%@-%@", [textString substringWithRange:NSMakeRange(0, 3)], [textString substringWithRange:NSMakeRange(3, 3)],[textString substringWithRange:NSMakeRange(6, 4)]];
    
    return formattedPhoneNumber;
}
@end
