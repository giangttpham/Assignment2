//
//  main.m
//  Assignment2
//
//  Created by Giang Pham on 9/1/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+formatPhoneNumber.h"
#import "NSString+getPhoneNumber.h"
#import "PhoneNumber.h"
#import "Name.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        printf("CS646 Assignment 2 - Giang Pham\n");
        /*
        NSLog(@"Text string: 858 743 8539");
        NSString * textString = @"858 743 8539";
        NSString * phoneNumberFromText =[textString phoneFormat];
        NSLog(@"Formatted phone number: %@",phoneNumberFromText);
        */

        PhoneNumber *newPhone = [PhoneNumber type:@"home" number:@"858 765 4321"];
        //PhoneNumber *newPhone = [[PhoneNumber alloc] initWithType:@"home" number:@"858 765 4321"];
        NSLog(@"Description: %@",[newPhone description]);
        if ([newPhone isLocal])
            NSLog(@"This phone number is local\n");
        if ([newPhone isMobile])
            NSLog(@"This phone number is mobile\n");
        
        PhoneNumber *phoneFromText = [@"work: 8587496543" asPhoneNumber];
        
        Name * nameOne = [Name firstName:@"Ryan" lastName:@"Luke"];
        Name * nameTwo = [Name firstName:@"Colleen" lastName:@"May"];
        NSLog(@"Name just created is:%@",[nameOne description]);
        
        if ([nameOne compare:nameTwo] == true)
            NSLog(@"Two names are the same\n");
        else
            NSLog(@"Two names are different\n");
        
        NSLog(@"Done\n");
    }
    return 0;
}

