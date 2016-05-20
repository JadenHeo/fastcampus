//
//  main.m
//  fastcamp_5_10
//
//  Created by 허홍준 on 2016. 5. 10..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "getScore.h"
#import "ToolBox.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        getScore *csClass = [[getScore alloc] init];
        
        [csClass addSubjectScore:100];
        [csClass addSubjectScore:10];
        [csClass addSubjectScore:80];
        [csClass addSubjectScore:90];
        
        CGFloat average = [csClass getAverageScore];
        
        NSInteger score = 84;
        NSLog(@"Average Score is %.2f", average);
        NSLog(@"Grade for %zd is %@", score, [getScore scoreToGrade:score]);
        NSLog(@"Point for %@ is %f", [getScore scoreToGrade:score], [getScore gradeToPoint:[getScore scoreToGrade:score]]);
        
        
        NSInteger a = 9;
        NSInteger b = 8;
        NSInteger result;
        
        NSLog(@"%zd + %zd = %zd", a, b, [ToolBox sum:a num2:b]);
        NSLog(@"%zd - %zd = %zd", a, b, [ToolBox sub:a num2:b]);
        NSLog(@"%zd * %zd = %zd", a, b, [ToolBox mul:a num2:b]);
        NSLog(@"%zd / %zd = %.3f", a, b, [ToolBox dev:a num2:b]);
        
        CGFloat inch=9.3;
        CGFloat cm=19.24;
        CGFloat m2=193.45;
        CGFloat py=73;
        CGFloat F=284;
        CGFloat C=74;
        CGFloat kB=1399283;
        
        NSLog(@"%.3finches is %.3fcm", inch, [ToolBox inchTocm:inch]);
        NSLog(@"%.3fcm is %.3finches", cm, [ToolBox cmToinch:cm]);
        NSLog(@"%.3fm^2 은 %.3f평", m2, [ToolBox m2ToPy:m2]);
        NSLog(@"%.3f평 은 %.3fm^2", py, [ToolBox pyTom2:py]);
        NSLog(@"화씨 %.3f도는 섭씨 %.3f도", F, [ToolBox FToC:F]);
        NSLog(@"섭씨 %.3f도는 화씨 %.3f도", C, [ToolBox CToF:C]);
        NSLog(@"%.3fkB = %.3fMB", kB, [ToolBox kBToMB:kB]);
        NSLog(@"%.3fkB = %.3fGB", kB, [ToolBox kBToGB:kB]);
        NSLog(@"%.3fMB = %.3fGB", [ToolBox kBToMB:kB], [ToolBox MBToGB:[ToolBox kBToMB:kB]]);
    }
    return 0;
}
