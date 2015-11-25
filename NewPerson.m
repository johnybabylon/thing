//
//  NewPerson.m
//  thing
//
//  Created by elliott chavis on 11/24/15.
//  Copyright (c) 2015 elliott chavis. All rights reserved.
//

#import "NewPerson.h"

@implementation NewPerson

+ (instancetype)randomPerson
{
    NSArray *randomNameList = @[@"Billy Gates", @"Steve Jobs", @"Marcus Zuckerberg"];
    NSArray *randomNumberList = @[@"415-754-0009", @"510-432-2323", @"415-678-5200"];
    
    NSInteger nameIndex = arc4random() % [randomNameList count];
    NSInteger numberIndex = arc4random() % [randomNumberList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@", [randomNameList objectAtIndex:nameIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomNumber = [NSString stringWithFormat:@"%@", [randomNumberList objectAtIndex:numberIndex]];
    
    NewPerson *person = [[self alloc] initWithPersonName:randomName
                                          valueInDollars:randomValue
                                            personNumber:randomNumber];
    return person;
}

- (instancetype)init
{
    return [self initWithPersonName:@"Person"];
}

- (instancetype)initWithPersonName:(NSString *)name
                    valueInDollars:(int)value
                      personNumber:(NSString *)sNumber
{
    self = [super init];
    
    if(self) {
        _personName = name;
        _personNumber = sNumber;
        _valueInDollars = value;
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;
    
}


- (void)setPersonName:(NSString *)str
{
    _personName = str;
}
- (NSString *)personName
{
    return _personName;
}


- (void)setPersonNumber:(NSString *)str
{
    _personNumber = str;
}
- (NSString *)personNumber
{
    return _personNumber;
}

- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}
- (int)valueInDollars
{
    return _valueInDollars;
}

- (NSDate *)dateCreated
{
    return _dateCreated;
}


- (NSString *)description
{
    
    NSString *descriptionString =
        [[ NSString alloc] initWithFormat:@" %@  %@  worth: $%d, signed up on: %@",
                                                    self.personName,
                                                    self.personNumber,
                                                    self.valueInDollars,
         self.dateCreated];
    
    return descriptionString;
    
}

@end
