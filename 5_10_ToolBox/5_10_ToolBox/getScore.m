//
//  getScore.m
//  fastcamp_5_10
//
//  Created by 허홍준 on 2016. 5. 10..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import "getScore.h"


@implementation getScore {
    NSMutableArray *subjectScoreList;
}

-(void) addSubjectScore:(NSInteger)score {
    if(subjectScoreList == nil) {
        subjectScoreList = [[NSMutableArray alloc] initWithCapacity:1];
    }
    
    NSNumber *scoreNum = [NSNumber numberWithInteger:score];
    
    [subjectScoreList addObject:scoreNum];
}

-(NSInteger) getTotalScore {
    NSInteger totalScore = 0;
    for (NSNumber *score in subjectScoreList) {
        totalScore +=score.integerValue;
    }
    return totalScore;
}

-(CGFloat) getAverageScore {
    if (subjectScoreList.count > 0) {
        CGFloat averageScore = ((CGFloat)[self getTotalScore])/subjectScoreList.count;
        return averageScore;
    }
    else
        return 0;
}

+(NSString*) scoreToGrade:(NSInteger)score {
    if (score > 95)
        return @"A+";
    else if (score >90)
        return @"A";
    else if (score >85)
        return @"B+";
    else if (score >80)
        return @"B";
    else if (score >75)
        return @"C+";
    else if (score >70)
        return @"C";
    else if (score >65)
        return @"D+";
    else if (score >60)
        return @"D";
    else
        return @"F";
}

+(CGFloat) gradeToPoint:(NSString*)grade {
    if ([grade isEqual:@"A+"])
        return 4.5;
    else if ([grade isEqual:@"A"])
        return 4.0;
    else if ([grade isEqual:@"B+"])
        return 3.5;
    else if ([grade isEqual:@"B"])
        return 3.0;
    else if ([grade isEqual:@"C+"])
        return 2.5;
    else if ([grade isEqual:@"C"])
        return 2.0;
    else if ([grade isEqual:@"D+"])
        return 1.5;
    else if ([grade isEqual:@"D"])
        return 1.0;
    else if ([grade isEqual:@"F"])
        return 0;
    else
        return -1;
}

@end