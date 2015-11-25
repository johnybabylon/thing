//
//  NewPerson.h
//  thing
//
//  Created by elliott chavis on 11/24/15.
//  Copyright (c) 2015 elliott chavis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewPerson : NSObject
{
    NSString *_personName;
    NSString *_personNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

+ (instancetype)randomPerson; 

- (instancetype)initWithPersonName:(NSString *)name
                    valueInDollars:(int)value
                      personNumber:(NSString *)sNumber;

- (instancetype)initWithPersonName:(NSString *)name;


- (void)setPersonName:(NSString *)str;
- (NSString *)personName;

- (void)setPersonNumber:(NSString *)str;
- (NSString *)personNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;

@end
