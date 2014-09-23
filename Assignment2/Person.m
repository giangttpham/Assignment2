//
//  Person.m
//  Assignment2
//
//  Created by Giang Pham on 9/8/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import "Person.h"

@implementation Person: NSObject
@synthesize fullName;
@synthesize phoneNumberList;

//create a new Person object with given first name and last name
+ (id) firstName: (NSString *) firstName
        lastName:(NSString *)lastName
{
    return [[self alloc] initWithFirstName:firstName lastName:lastName];
}

//function used to set the variables for a new Person instance
- (id) initWithFirstName: (NSString *) inputFirstName
               lastName: (NSString *) inputLastName
{
    if (self = [super init])
    {
        fullName = [Name firstName:inputFirstName lastName:inputLastName];
        
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
    return [fullName description];
}

//returns the phone number of a given type
//if the person doesn't have a phone number of that type, return nil
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

//check if a Person object has a specific phone number
- (BOOL) hasNumber: (NSString *)phoneNumber
{
    NSString * formattedPhoneNumber = [phoneNumber phoneFormat];
    PhoneNumber * currentPhone = [[PhoneNumber alloc] init];
    for (int i = 0; i < [phoneNumberList count]; i++)
    {
        currentPhone = [phoneNumberList objectAtIndex:i];
        if ([[currentPhone number] isEqualToString:formattedPhoneNumber])
            return true;
    }
    
    return false;
}

- (NSArray *) getPhoneList
{
    return phoneNumberList;
}

@end
