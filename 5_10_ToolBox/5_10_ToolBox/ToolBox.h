//
//  ToolBox.h
//  fastcamp_5_10
//
//  Created by 허홍준 on 2016. 5. 10..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToolBox : NSObject

+(NSInteger) sum : (NSInteger)num1 num2:(NSInteger)num2;
+(NSInteger) sub : (NSInteger)num1 num2:(NSInteger)num2;
+(NSInteger) mul : (NSInteger)num1 num2:(NSInteger)num2;
+(CGFloat) dev : (NSInteger)num1 num2:(NSInteger)num2;

+(CGFloat) inchTocm : (CGFloat) inch;
+(CGFloat) cmToinch : (CGFloat) cm;
+(CGFloat) m2ToPy : (CGFloat) m2;
+(CGFloat) pyTom2 : (CGFloat) py;
+(CGFloat) FToC : (CGFloat) F;
+(CGFloat) CToF : (CGFloat) C;
+(CGFloat) kBToMB : (CGFloat) kB;
+(CGFloat) MBToGB : (CGFloat) MB;
+(CGFloat) kBToGB : (CGFloat) kB;

@end