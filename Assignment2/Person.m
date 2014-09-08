//
//  Person.m
//  Assignment2
//
//  Created by Tra` Beo' on 9/8/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import "Person.h"

@implementation Person: NSObject
@synthesize firstName;
@synthesize lastName;
@synthesize phoneNumberList;

+ (id) firstName: (NSString *) firstName
        lastName:(NSString *)lastName
{
    return [[self alloc] initWithFirstName:firstName lastName:lastName];
}

- (id) initWithFistName: (NSString *) inputFirstName
               lastName: (NSString *) inputLastName
{
    if (self = [super init])
    {
        firstName = inputFirstName;
        lastName = inputLastName;
        
        phoneNumberList = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void) setPhoneNumber:(PhoneNumber *) number
{
    [phoneNumberList addObject:number];
}

- (NSString *) description
{
    NSString * fullName = [NSString stringWithFormat:@"%@ %@",firstName,lastName];
    
    return fullName;
}

- (NSString *) phoneNumber: (NSString *) phoneType
{
    PhoneNumber *currentPhone = [[PhoneNumber alloc] init];
    for (int i = 0; i < [phoneNumberList count]; i++)
    {
        currentPhone = [phoneNumberList objectAtIndex:i];
        if ([[currentPhone type] isEqualToString:phoneType])
            return [currentPhone number];
    }
    
    return nil;
}

- (BOOL) hasNumber: (NSString *)phoneNumber
{
    PhoneNumber * currentPhone = [[PhoneNumber alloc] init];
    for (int i = 0; i < [phoneNumberList count]; i++)
    {
        currentPhone = [phoneNumberList objectAtIndex:i];
        if ([[currentPhone number] isEqualToString:phoneNumber])
            return true;
    }
    
    return false;
}


@end
