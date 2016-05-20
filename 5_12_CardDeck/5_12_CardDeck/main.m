//
//  main.m
//  fastcamp_5_12_CardDeck
//
//  Created by 허홍준 on 2016. 5. 12..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Dealer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dealer *dealer = [[Dealer alloc] init];
        
        [dealer createDeck];
        [dealer printDeck];
        
        NSLog(@"----- CARD SHUFFLE -----");
        [dealer shuffleDeck];
        [dealer printDeck];
        //NSLog(@"%d")
        
    }
    return 0;
}
