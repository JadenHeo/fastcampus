//
//  ToolBox.m
//  fastcamp_5_10
//
//  Created by 허홍준 on 2016. 5. 10..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import "ToolBox.h"

@implementation ToolBox{}


+ (NSInteger)sum:(NSInteger)num1 num2:(NSInteger)num2 {
    return num1+num2;
}

+ (NSInteger)sub:(NSInteger)num1 num2:(NSInteger)num2 {
    return num1-num2;
}

+(NSInteger) mul : (NSInteger)num1 num2:(NSInteger)num2 {
    return num1*num2;
}

+(CGFloat) dev : (NSInteger)num1 num2:(NSInteger)num2 {
    return ((CGFloat)num1)/num2;
}

+(CGFloat) inchTocm : (CGFloat) inch {
    return inch*2.54;
}
+(CGFloat) cmToinch : (CGFloat) cm {
    return cm/2.54;
}
+(CGFloat) m2ToPy : (CGFloat) m2 {
    return m2/3.33;
}
+(CGFloat) pyTom2 : (CGFloat) py {
    return py*3.33;
}
+(CGFloat) FToC : (CGFloat) F {
    return (5.0/9.0)*(F-32);
}
+(CGFloat) CtoF : (CGFloat) C {
    return (9.0/5.0)*C+32;
}
+(CGFloat) kBToMB : (CGFloat) kB {
    return kB/1000;
}
+(CGFloat) MBToGB : (CGFloat) MB {
    return MB/1000;
}
+(CGFloat) kBToGB : (CGFloat) kB {
    return kB/1000000;
}


@end