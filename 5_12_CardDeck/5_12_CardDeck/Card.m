//
//  Card.m
//  fastcamp_5_12_CardDeck
//
//  Created by 허홍준 on 2016. 5. 12..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@implementation Card {
}

- (Card *)customInit:(NSString *)type number:(NSString *)number color:(NSString *)color {
    if (self) {
        self.type=type;
        self.number=number;
        self.color=color;
    }
    
    return self;
}

@end