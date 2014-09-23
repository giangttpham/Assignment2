//
//  ContactList.m
//  Assignment2
//
//  Created by Giang Pham on 9/8/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
@synthesize contacts;

//create a new Contact object
+ (id) init
{
    return [[self alloc] initWithContactList];
}

//initialize a Contact instance by initialzing the contacts array
- (id) initWithContactList
{
    if (self = [super init])
        contacts = [[NSMutableArray alloc]init];

    return self;
}

- (void) addPerson: (Person *) newContact
{
    [contacts addObject:newContact];
}

- (NSArray *) orderedByName
{
    [contacts sortUsingComparator:^(Person *firstPerson, Person *secondPerson)
                                 {return [[[firstPerson fullName] lastName] caseInsensitiveCompare:[[secondPerson fullName] lastName]];}];
    return contacts;
}

//returns the phone number list for a given last name
- (NSArray *) phoneNumberFor:(NSString *) lastName;
{
    Person * currentContact = [[Person alloc]init];
    for (int i = 0; i < [contacts count]; i++)
    {
        currentContact = [contacts objectAtIndex:i];
        if ([[[currentContact fullName] lastName] isEqualToString:lastName])
            return [currentContact getPhoneList];
    }
    
    return nil;
}

//returns the last name that has a specific number
- (NSString *) nameForNumber:(NSString *) phoneNumber
{
    Person *currentContact = [[Person alloc]init];
    NSString * formattedPhoneNumber = [phoneNumber phoneFormat];
    for (int i = 0; i < [contacts count]; i++)
    {
        currentContact = [contacts objectAtIndex:i];
        if ([currentContact hasNumber:formattedPhoneNumber])
            return [currentContact description];
    }
    return nil;
}
@end
