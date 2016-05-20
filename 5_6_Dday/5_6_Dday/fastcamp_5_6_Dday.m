//
//  main.m
//  fastcamp_5_6
//
//  Created by 허홍준 on 2016. 5. 9..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>

int inputDDay;
const int nowDate=20160509;

bool checkInputDay(int input) {
    int inputTrueCheck;
    inputTrueCheck=input/100;
    
    if (input/10000000>9 || input/100<1)
        return false;
    else if (input%100>31)
        return false;
    else if (inputTrueCheck%100>12)
        return false;
    else
        return true;
}

void setInputDay(bool checkInputDay, int input) {
    if (checkInputDay)
        inputDDay=input;
    else
        printf("Invalid Day input\n");
}

int checkFromFirstDay(int year, int month, int day) {
    int fromFirstDay=0;
    
    fromFirstDay=(year-1)*365+((year-1)/4)-((year-1)/100)+((year-1)/400);
    
    for (int i=month-1;i>0;i--) {
        switch (i) {
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 10:
            case 12:
                fromFirstDay+=31;
                break;
                
            case 4:
            case 6:
            case 9:
            case 11:
                fromFirstDay+=30;
                break;
                
            case 2:
                if ((year%4==0 && year%100!=0) || year%400==0)
                    fromFirstDay+=29;
                else
                    fromFirstDay+=28;
            default:
                break;
        }
    }
    
    fromFirstDay+=day;
    
    return fromFirstDay;
}

int checkDDay(int inputDDay) {
    int DDay=0;
    
    int firstDaytoInput=0;
    int firstDaytoNow=0;
    
    int inputYear=inputDDay/10000;
    int inputMonth=(inputDDay/100)%100;
    int inputDay=inputDDay%100;
    
    int nowYear=nowDate/10000;
    int nowMonth=(nowDate/100)%100;
    int nowDay=nowDate%100;
    
    
    firstDaytoInput=checkFromFirstDay(inputYear, inputMonth, inputDay);
    firstDaytoNow=checkFromFirstDay(nowYear, nowMonth, nowDay);
    
    DDay=firstDaytoNow-firstDaytoInput;
    return DDay;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int input=20160121;
        
        if (checkInputDay(input)) {
            setInputDay(checkInputDay(input), input);
            printf("%d 부터 오늘 까지의 날짜 수는 %d일 입니다.\n", inputDDay, checkDDay(inputDDay));
        }
        
        else
            printf("Invalid Input Day\n");
        
    }
    return 0;
}
