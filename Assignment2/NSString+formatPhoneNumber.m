//
//  NSString+formatPhoneNumber.m
//  Assignment2
//
//  Created by Giang Pham on 9/2/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import "NSString+formatPhoneNumber.h"

@implementation NSString (formatPhoneNumber)
//convert entered text into proper phone number format
- (NSString *) phoneFormat;
{
    //filter the text to leave only numbers
    NSString * textString = [self stringByReplacingOccurrencesOfString:@" " withString:@""];
    textString = [textString stringByReplacingOccurrencesOfString:@"-" withString:@""];

    //return format string ###-###-####
    NSString* formattedPhoneNumber = [NSString stringWithFormat: @"%@-%@-%@", [textString substringWithRange:NSMakeRange(0, 3)], [textString substringWithRange:NSMakeRange(3, 3)],[textString substringWithRange:NSMakeRange(6, 4)]];
    
    return formattedPhoneNumber;
}
@end
