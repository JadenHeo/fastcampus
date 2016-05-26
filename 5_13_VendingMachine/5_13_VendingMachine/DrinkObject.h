//
//  DrinkObject.h
//  VendingMachine
//
//  Created by youngmin joo on 2016. 5. 11..
//  Copyright © 2016년 WingsCompany. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DrinkObject : NSObject

@property (nonatomic, readonly, strong) NSString *name;
@property (nonatomic, readonly, assign) NSInteger cost;

- (instancetype)initWithName:(NSString *)name cost:(NSInteger)cost;

@end
