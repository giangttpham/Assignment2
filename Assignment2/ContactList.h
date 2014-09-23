//
//  ContactList.h
//  Assignment2
//
//  Created by Giang Pham on 9/8/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@interface ContactList : NSObject
@property NSMutableArray* contacts;

+ (id) init;
- (id) initWithContactList;
- (void) addPerson: (Person *) newContact;
- (NSArray *) orderedByName;
- (NSArray *) phoneNumberFor:(NSString *) lastName;
- (NSString *) nameForNumber:(NSString *) phoneNumber;
@end
