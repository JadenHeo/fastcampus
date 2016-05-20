//
//  main.m
//  fastcamp_5_9_2
//
//  Created by 허홍준 on 2016. 5. 9..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>

NSInteger totalScore(NSArray *subjectScore) {
    NSInteger totalScore = 0;
    for (NSNumber *score in subjectScore)
        totalScore+=score.integerValue;
    
    return totalScore;
}

CGFloat averageScore(NSArray *subjectScore) {
    return (CGFloat)totalScore(subjectScore)/subjectScore.count;
}

void customCalculation(NSArray *input) {
    for (NSNumber *calNum in input) {
        for (NSInteger i=1; i<10; i++)
            NSLog(@"%@ x %zd = %zd", calNum, i, calNum.integerValue*i);
        NSLog(@"-----------");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSArray *subjectScore = @[@100, @99, @98, @78, @87, @64, @94, @43];
        NSArray *input = @[@3, @6, @9];
        customCalculation(input);
        
        //NSLog(@"총점은 %zd, 평균은 %f", totalScore(subjectScore), averageScore(subjectScore));
        
    }
    return 0;
}
