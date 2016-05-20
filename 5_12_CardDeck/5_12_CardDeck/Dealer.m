//
//  Dealer.m
//  fastcamp_5_12_CardDeck
//
//  Created by 허홍준 on 2016. 5. 12..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import "Dealer.h"
#import "Card.h"

@implementation Dealer {
    NSMutableArray *cardDeck;
}

- (void)createDeck {
    if(cardDeck == nil) {
        cardDeck = [[NSMutableArray alloc] initWithCapacity:1];
    }
    
    for (int i=1; i<14; i++) {
        for (int j=1; j<5; j++) {
            Card *card=[[Card alloc] init];
            NSString *number;
            
            if (i<11)
                number=[NSString stringWithFormat:@"%d",i];
            else if (i==11)
                number=@"J";
            else if (i==12)
                number=@"Q";
            else
                number=@"K";
            
            if (j==1)
                [cardDeck addObject:[card customInit:@"♠︎" number:number color:@"BLK"]];
            else if (j==2)
                [cardDeck addObject:[card customInit:@"♦︎" number:number color:@"RED"]];
            else if (j==3)
                [cardDeck addObject:[card customInit:@"♥︎" number:number color:@"RED"]];
            else
                [cardDeck addObject:[card customInit:@"♣︎" number:number color:@"BLK"]];
        }
    }
}

- (void)shuffleDeck {
    for (int i=0; i<cardDeck.count; i++)
        [cardDeck exchangeObjectAtIndex:i withObjectAtIndex:arc4random()%(cardDeck.count)];
}
- (void)printDeck {
    int i=1;
    for (Card *print in cardDeck) {
        NSLog(@"   %@     %@     %@   ", print.type, print.number, print.color);
        i++;
    }
    
    //NSLog(@"%zd",cardDeck.count);
}

@end