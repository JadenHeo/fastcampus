//
//  getScore.h
//  fastcamp_5_10
//
//  Created by 허홍준 on 2016. 5. 10..
//  Copyright © 2016년 허홍준. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface getScore : NSObject

-(void) addSubjectScore:(NSInteger)score;
-(CGFloat) getAverageScore;
+(NSString*) scoreToGrade:(NSInteger)score;
+(CGFloat) gradeToPoint:(NSString*)grade;
@end
