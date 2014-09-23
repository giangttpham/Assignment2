//
//  PhoneNumber.m
//  Assignment2
//
//  Created by Giang Pham on 9/3/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import "PhoneNumber.h"

@implementation PhoneNumber
@synthesize type;
@synthesize number;

//create a new PhoneNumber object with given type and number
+ (id) type: (NSString *)type
     number:(NSString*)number
{
    return [[self alloc] initWithType:type number:number];
}

//set the variables for the new PhoneNumber instance
- (id) initWithType:(NSString *)phoneType
               number:(NSString*)phoneNumber
{
    if (self = [super init])
    {
        type = phoneType;
        number = [phoneNumber phoneFormat];
    }
    return self;
}

//return the phone number in proper format ###-###-####
- (NSString *) formatPhoneNumber
{
    return [number phoneFormat];
}

- (BOOL) isMobile
{
    if ([type isEqualToString:@"mobile"])
        return true;
    return false;
}

- (BOOL) isLocal
{
    NSString * firstThreeDigits = [number substringToIndex:3];
    if ([firstThreeDigits isEqualToString:@"858"] || [firstThreeDigits isEqualToString:@"619"])
        return true;
    return false;
}

- (NSString *) description
{
    NSString * phoneDescription;
    phoneDescription = [NSString stringWithFormat:@"%@: %@",type, [self formatPhoneNumber]];
    return phoneDescription;
}

@end
