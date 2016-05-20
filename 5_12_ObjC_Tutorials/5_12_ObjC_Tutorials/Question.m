//
//  Question.m
//  fastcamp_5_12
//
//  Created by 허홍준 on 2016. 5. 12..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import "Question.h"

@implementation Question {
}

+ (CGFloat)roundsNum:(CGFloat)inputNum decimalPoint:(NSInteger)decimalPoint{
    CGFloat outputNum=inputNum;
    NSInteger tempInteger;

    
    for (int i=1; i<decimalPoint; i++ )
        outputNum*=10;
    
    outputNum+=0.5;
    tempInteger=(NSInteger)outputNum;
    outputNum=(CGFloat)tempInteger;
    
    for (int i=1; i<decimalPoint; i++ )
        outputNum=outputNum/10;
    
    return outputNum;
}

+ (BOOL)isLeapYear:(NSInteger)year {
    if ( (year%4==0 && year%100!=0) || year%400==0)
        return YES;
    else
        return NO;
}

+ (NSInteger)lastDayOfMonth:(NSInteger)month year:(NSInteger)year {
    switch (month) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            return 31;
            break;
        case 4:
        case 6:
        case 9:
        case 11:
            return 30;
            break;
        case 2:
            if([self isLeapYear:year])
                return 29;
            else
                return 28;
            break;
        default:
            return 0;
    }
}

+ (void)inputYear:(NSInteger)year afterDay:(NSInteger)afterDay {
    NSInteger month = 0;
    NSInteger day;
    NSInteger tempDaytoCheckMonth=afterDay;
    
    for (int i=1; tempDaytoCheckMonth>0; i++) {
        tempDaytoCheckMonth-=[self lastDayOfMonth:i year:year];
        month=i;
    }
    day=tempDaytoCheckMonth+[self lastDayOfMonth:month year:year];
    
    NSLog(@"%zd년의 %zd일 번째 날은 %zd월 %zd일 입니다.",year,afterDay,month,day);
    
    
}

+ (NSInteger)reverseNum:(NSInteger)inputNum {
    NSInteger outputNum=0;
    NSInteger tempInputNum=inputNum;
    
    for (int i=0; tempInputNum>0; i++) {
        outputNum=outputNum*10+(tempInputNum%10);
        tempInputNum=tempInputNum/10;
    }
    return outputNum;
}

@end