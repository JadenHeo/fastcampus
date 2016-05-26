//
//  DrinkObject.m
//  VendingMachine
//
//  Created by youngmin joo on 2016. 5. 11..
//  Copyright © 2016년 WingsCompany. All rights reserved.
//

#import "DrinkObject.h"

@implementation DrinkObject


- (instancetype)initWithName:(NSString *)name cost:(NSInteger)cost
{
    self = [super init];
    if (self) {
        _name = name;
        _cost = cost;
    }
    return self;
}



@end
