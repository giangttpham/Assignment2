//
//  Name.h
//  Assignment2
//
//  Created by Giang Pham on 9/7/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Name : NSObject
@property NSString * firstName;
@property NSString * lastName;

+ (id) firstName: (NSString *)firstName
       lastName: (NSString *)lastName;
- (id) initWithFirstName: (NSString *)firstName
               lastName: (NSString *)lastName;
- (NSString *) description;
- (NSComparisonResult) compare: (Name *)name;
@end
