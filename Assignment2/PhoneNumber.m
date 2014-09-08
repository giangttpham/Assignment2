//
//  PhoneNumber.m
//  Assignment2
//
//  Created by Tra` Beo' on 9/3/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import "PhoneNumber.h"

@implementation PhoneNumber

@synthesize type;
@synthesize number;

+ (id) type: (NSString *)type
     number:(NSString*)number
{
    return [[self alloc] initWithType:type number:number];

}


- (id) initWithType:(NSString *)phoneType
               number:(NSString*)phoneNumber
{
    if (self = [super init])
    {
        type = phoneType;
        number = phoneNumber;
    }
    
    return self;
}

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
