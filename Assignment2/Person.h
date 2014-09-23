//
//  Person.h
//  Assignment2
//
//  Created by Giang Pham on 9/8/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Name.h"
#import "PhoneNumber.h"
#import "Name.h"

@interface Person : NSObject
@property Name * fullName;
@property NSMutableArray* phoneNumberList;

+ (id) firstName: (NSString *) firstName
        lastName:(NSString *)lastName;
- (id) initWithFirstName: (NSString *) inputFirstName
               lastName: (NSString *) inputLastName;
- (void) setPhoneNumber:(PhoneNumber *) number;
- (NSString *) description;
- (NSString *) phoneNumber: (NSString *) phoneType;
- (BOOL) hasNumber: (NSString *)phoneNumber;
- (NSArray *) getPhoneList;
@end
