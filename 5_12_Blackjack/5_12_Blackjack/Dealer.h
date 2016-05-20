//
//  Dealer.h
//  fastcamp_5_12_CardDeck
//
//  Created by 허홍준 on 2016. 5. 12..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Dealer : NSObject

- (Dealer *)init;
- (void)createDeck;
- (void)shuffleDeck;
- (void)printDeck;

@end