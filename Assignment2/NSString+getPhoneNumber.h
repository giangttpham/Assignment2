//
//  NSString+getPhoneNumber.h
//  Assignment2
//
//  Created by Giang Pham on 9/5/14.
//  Copyright (c) 2014 Giang Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneNumber.h"
#import "NSString+formatPhoneNumber.h"

@interface NSString (getPhoneNumber)
- (PhoneNumber *) asPhoneNumber;
@end
