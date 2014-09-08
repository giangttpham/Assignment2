//
//  PhoneNumber.h
//  Assignment2
//
//  Created by Tra` Beo' on 9/3/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+formatPhoneNumber.h"

@interface PhoneNumber : NSObject
@property (retain) NSString * type;
@property (retain) NSString * number;

+ (id) type: (NSString *)type
     number:(NSString*)number;
- (id) initWithType:(NSString *)phoneType
             number:(NSString*)phoneNumber;
- (NSString *) formatPhoneNumber;
- (BOOL) isMobile;
- (BOOL) isLocal;
- (NSString *) description;

@end
