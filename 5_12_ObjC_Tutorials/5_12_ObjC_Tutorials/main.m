//
//  main.m
//  fastcamp_5_12
//
//  Created by 허홍준 on 2016. 5. 12..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"%f", [Question roundsNum:3.4958 decimalPoint:4]);
        
        [Question inputYear:2016 afterDay:102];
        
        NSLog(@"%zd", [Question reverseNum:2016]);
        
    }
    return 0;
}
