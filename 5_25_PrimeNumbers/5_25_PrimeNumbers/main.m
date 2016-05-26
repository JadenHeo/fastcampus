//
//  main.m
//  5_25_PrimeNumbers
//
//  Created by 허홍준 on 2016. 5. 25..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>

const NSInteger M = 1;
const NSInteger N = 100000;


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *primes=[[NSMutableArray alloc]init];
        NSMutableArray *check = [NSMutableArray arrayWithCapacity:N+1];
        
        //Check가 True면 소수. false면 소수가 아니다.
        for (NSInteger i=0; i<=N; i++) {
            [check addObject:@(YES)];
        }
        
        for (NSInteger i=2; i<=N; i++) {
            if ([check[i] boolValue]==YES) {
                [primes addObject:@(i)];
                for (NSInteger j=i*i; j<=N; j+=i) {
                    check[j]=@(NO);
                }
            }
        }
        
        NSLog(@"%tu",[primes count]);
        
    }
    return 0;
}
