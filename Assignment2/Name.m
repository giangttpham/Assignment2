//
//  Name.m
//  Assignment2
//
//  Created by Giang Pham on 9/7/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import "Name.h"

@implementation Name: NSObject
@synthesize firstName;
@synthesize lastName;

//create a new Name object with given First Name and Last Name
+ (id) firstName:(NSString *)firstName lastName:(NSString *)lastName
{
    return [[self alloc] initWithFirstName:firstName lastName:lastName];
}

//function used to set the instance variables for new instance
- (id) initWithFirstName:(NSString *)inputFirstName lastName:(NSString *)inputLastName
{
    if (self = [super init])
    {
        firstName = inputFirstName;
        lastName = inputLastName;
    }
    return self;
}

- (NSString *)description
{
    NSString * fullName = [NSString stringWithFormat:@"%@ %@",firstName,lastName];
    return fullName;
}

- (NSComparisonResult) compare: (Name *) name
{
    if ([name.firstName isEqualToString:firstName] && [name.lastName isEqualToString:lastName])
        return true;
    return false;
}

@end
