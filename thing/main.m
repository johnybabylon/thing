//
//  main.m
//  thing
//
//  Created by elliott chavis on 11/24/15.
//  Copyright (c) 2015 elliott chavis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *things = [[NSMutableArray alloc] init];
        
        [things addObject:@"Danny"];
        [things addObject:@"You"];
        [things addObject:@"Parker"];
        [things addObject: [NSNumber numberWithInt:23]];
        [things addObject: [NSNumber numberWithInt: 54]];
        
        [things insertObject:@"PrimeTime" atIndex:5];
        
        
        
        things = nil;
        
        
        
        NewPerson *person = [[NewPerson alloc] initWithPersonName:@"Larry Programmer"
                                                   valueInDollars:10000
                                                     personNumber:@"415-889-0009"];
        
        NSLog(@" %@", person);
        
        person = nil;
              
    }
    return 0;
}
