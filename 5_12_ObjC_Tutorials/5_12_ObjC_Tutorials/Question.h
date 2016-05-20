//
//  Question.h
//  fastcamp_5_12
//
//  Created by 허홍준 on 2016. 5. 12..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

+ (CGFloat)roundsNum:(CGFloat)inputNum decimalPoint:(NSInteger)decimalPoint;
+ (BOOL)isLeapYear:(NSInteger)year;
+ (NSInteger)lastDayOfMonth:(NSInteger)month year:(NSInteger)year;
+ (void)inputYear:(NSInteger)year afterDay:(NSInteger)afterDay;
+ (NSInteger)reverseNum:(NSInteger)inputNum;

@end