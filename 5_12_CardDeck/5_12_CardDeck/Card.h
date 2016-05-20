//
//  Card.h
//  fastcamp_5_12_CardDeck
//
//  Created by 허홍준 on 2016. 5. 12..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

- (Card *)customInit:(NSString *)type number:(NSString *)number color:(NSString *)color;

@property NSString *type;
@property NSString *number;
@property NSString *color;

@end