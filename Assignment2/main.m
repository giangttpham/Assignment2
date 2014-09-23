//
//  main.m
//  Assignment2
//
//  Created by Giang Pham on 9/1/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.

#import <Foundation/Foundation.h>
#import "NSString+formatPhoneNumber.h"
#import "NSString+getPhoneNumber.h"
#import "PhoneNumber.h"
#import "Name.h"
#import "Person.h"
#import "ContactList.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        printf("CS646 Assignment 2 - Giang Pham\n");
        
        //test phoneFormat method added to NSString lcass
        NSLog(@"Text string: 858 743 8539");
        NSString * textString = @"858 743 8539";
        NSString * formattedPhoneNumber =[textString phoneFormat];
        NSLog(@"Formatted phone number: %@",formattedPhoneNumber);
        
        NSLog(@"--------------------\n");

        //test PhoneNumber class
        PhoneNumber *newPhone = [PhoneNumber type:@"home" number:@"858 765 4321"];
        NSLog(@"Description: %@",[newPhone description]);
        if ([newPhone isLocal])
            NSLog(@"This phone number is local\n");
        if ([newPhone isMobile])
            NSLog(@"This phone number is mobile\n");
        
        NSLog(@"--------------------\n");

        //test asPhoneNumber method added to NSString class
        PhoneNumber *phoneNumberFromText = [@"work: 8587496543" asPhoneNumber];
        NSLog(@"New phone number created from text: %@",[phoneNumberFromText description]);
        
        NSLog(@"--------------------\n");

        //test Name class
        Name * nameOne = [Name firstName:@"Ryan" lastName:@"Luke"];
        Name * nameTwo = [Name firstName:@"Colleen" lastName:@"May"];
        NSLog(@"Two names just created are:\n%@\n%@",[nameOne description],[nameTwo description]);
        
        if ([nameOne compare:nameTwo] == true)
            NSLog(@"Two names are the same\n");
        else
            NSLog(@"Two names are different\n");
        
        NSLog(@"--------------------\n");

        //test Person class
        Person * newPerson = [Person firstName:@"Jean" lastName:@"McKinney"];
        PhoneNumber *newWorkPhone = [PhoneNumber type:@"work" number:@"7146478302"];
        PhoneNumber *newHomePhone = [PhoneNumber type:@"home" number:@"7142870098"];
        [newPerson setPhoneNumber:newHomePhone];
        [newPerson setPhoneNumber:newWorkPhone];
        NSLog(@"%@ home phone is %@",[newPerson description],[newPerson phoneNumber:@"home"]);
        BOOL matchNumber = [newPerson hasNumber:@"8587489333"];
        if (matchNumber)
            NSLog(@"The number 858-748-9333 belongs to %@",[newPerson description]);
        else
            NSLog(@"The number 858-748-9333 doesn't belong to %@",[newPerson description]);
        
        NSLog(@"--------------------\n");
        
        //test ContactList class
        ContactList * newContactList = [ContactList init];
        Person * contact1 = [Person firstName:@"Amy" lastName:@"Pond"];
        Person * contact2 = [Person firstName:@"Nathan" lastName:@"Whitmore"];
        Person * contact3 = [Person firstName:@"Daniel" lastName:@"Adams"];

        PhoneNumber * phoneNumber1 = [@"home: 3147586430" asPhoneNumber];
        PhoneNumber * phoneNumber2 = [@"work: 7146583987" asPhoneNumber];
        PhoneNumber * phoneNumber3 = [@"mobile: 8583740987" asPhoneNumber];
        PhoneNumber * phoneNumber4 = [@"main: 8587469034" asPhoneNumber];
        
        [contact1 setPhoneNumber:phoneNumber1];
        [contact2 setPhoneNumber:phoneNumber2];
        [contact3 setPhoneNumber:phoneNumber3];
        [contact3 setPhoneNumber:phoneNumber4];
        
        [newContactList addPerson:contact1];
        [newContactList addPerson:contact2];
        [newContactList addPerson:contact3];
        
        NSArray *contactListInOrder = [newContactList orderedByName];
        NSLog(@"Contact list ordered by last names:\n");
        for (int i = 0; i < [contactListInOrder count]; i++)
        {
            NSLog(@"%@",[[contactListInOrder objectAtIndex:i] description]);
        }
        NSLog(@"\n");
        NSArray * adamsPhoneList = [newContactList phoneNumberFor:@"Adams"];
        NSLog(@"Adams' phone list:\n");
        for (int i = 0; i < [adamsPhoneList count]; i++)
            NSLog(@"%@", [[adamsPhoneList objectAtIndex:i] description]);
            
        NSLog(@"The number 714-658-3987 belongs to %@", [newContactList nameForNumber:@"7146583987"]);

    }
    return 0;
}

