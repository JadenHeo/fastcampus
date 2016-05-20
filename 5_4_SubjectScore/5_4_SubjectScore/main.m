//
//  main.m
//  fastcamp_5_4_2
//
//  Created by 허홍준 on 2016. 5. 4..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>

int korScore = 0;
int engScore = 0;
int mathScore = 0;
int scienceScore = 0;

void setKorScore ( int newScore ) {
    korScore = newScore;
}
void setEngScore ( int newScore ) {
    engScore = newScore;
}
void setMathScore ( int newScore ) {
    mathScore = newScore;
}
void setScienceScore ( int newScore ) {
    scienceScore = newScore;
}

float scoreTotal (int korScore, int engScore, int mathScore, int scienceScore) {
    return korScore + engScore + mathScore + scienceScore;
}

float scoreAvg ( float total ) {
    return total/4;
}






int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        setKorScore(92);
        setEngScore(97);
        setScienceScore(100);
        setMathScore(100);
        
        printf("점수들의 총 평균은 %f점 입니다.\n", scoreAvg(scoreTotal(korScore,engScore,mathScore,scienceScore)));
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
