//
//  NSString+getPhoneNumber.m
//  Assignment2
//
//  Created by Tra` Beo' on 9/5/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import "NSString+getPhoneNumber.h"


@implementation NSString (getPhoneNumber)
- (PhoneNumber *) asPhoneNumber
{
    
    @try {
        NSRegularExpression * regex = [NSRegularExpression
                                       regularExpressionWithPattern: @"\\w+: \\d\\d\\d( |-)?+\\d\\d\\d( |-)?+\\d\\d\\d\\d"
                                       options:NSRegularExpressionCaseInsensitive
                                       error:nil];
        NSRange rangeOfFirstMatch = [regex rangeOfFirstMatchInString:self
                                                             options: 0
                                                               range: NSMakeRange(0, self.length)];
        if (!NSEqualRanges(rangeOfFirstMatch,NSMakeRange(0, self.length)))
        {
            NSException *e = [NSException
                              exceptionWithName: @"Invalid phone number format"
                              reason: @"The phone number should be in this format: \"type: number\""
                              userInfo: nil];
            @throw e;
        }
        
        NSRange rangeOfColonChar = [self rangeOfString:@": "];
    
        NSString * phoneType = [self substringToIndex:rangeOfColonChar.location];
        NSString * phoneNumber = [[self substringFromIndex:rangeOfColonChar.location + rangeOfColonChar.length] phoneFormat];
        
        PhoneNumber * newPhone = [PhoneNumber type:phoneType number:phoneNumber];
        
        return newPhone;
        
    }
    @catch (NSException *exception) {
        NSLog(@"An exception has orcurred: %@",exception.name);
        NSLog(@"Exception details: %@",exception.reason);
    }
    @finally {
        NSLog(@"Stop executing task");
    }
}
@end
