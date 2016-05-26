//
//  TrayBox.h
//  VendingMachine
//
//  Created by youngmin joo on 2016. 5. 11..
//  Copyright © 2016년 WingsCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DrinkObject.h"

static const NSInteger maximumDrinkCount = 4;

@interface TrayBox : NSObject


@property (nonatomic,readonly, strong) NSArray *drinkKinds;


@end
