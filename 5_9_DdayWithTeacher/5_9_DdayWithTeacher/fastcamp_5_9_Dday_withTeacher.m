//
//  main.m
//  fastcamp_5_9
//
//  Created by 허홍준 on 2016. 5. 9..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>

int eventDate;
bool isLeapYear(int year);
int lastDayofMonth(int month, int year);
int totalDayWithDate(int date);
void calculationDday(int today);

//이벤트 날짜 input설정
void setEventDate(int date) {
    eventDate = date;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //이벤트 날짜 설정
        setEventDate(20160509);
        
        //오늘 날짜 까지 날짜 수 계산
        calculationDday(20160509);
    }
    return 0;
}

//윤년인지 아닌지 체크하는 함수
bool isLeapYear(int year) {
    if ((year%4==0 && year%100!=0) || year%400==0)
        return true;
    else
        return false;
}

//연도 상관없이 1월 1일부터 오늘까지 며칠인지 계산
//month의 마지막 날(그 달의 날짜 수)를 lastDayofMonth 함수로부터 받아와서 더함
int totalDayWithDate(int date) {
    int year = date/10000;
    int month = (date/100)%100;
    int day = date%100;
    int totalDay=0;
    
    //날짜에 해당하는 달을 제외한 그 전 month들의 마지막 날짜들을 다 합함
    for (int i=1;i<month;i++)
        totalDay+=lastDayofMonth(i, year);
    //날짜에 해당하는 달에 그 날짜를 더 해줌
    totalDay+=day;
    
    return totalDay;
    
}

//몇 월이 총 며칠인지 return해주는 함수 (윤년이면 2월에 29를, 윤년이 아니면 28를 return 해야하므로 year input도 필요)
int lastDayofMonth(int month, int year) {
    switch (month) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            return 31;
        
        case 4:
        case 6:
        case 9:
        case 11:
            return 30;
        
        case 2:
            if(isLeapYear(year))
                return 29;
            else return 28;
        
        default:
            return -1;
    }
}

//Dday 까지의 날짜를 체크하는 함수
void calculationDday(int today) {
    int Dday=0;
    
    int beforeDate;
    int afterDate;
    
    //Dday와 Today중에 누가 먼저고, 나중에 있는지 체크해서 뒤에있는 날짜를 after에, 앞에 날짜를 befor에 넣는다
    if (eventDate > today) {
        afterDate=eventDate;
        beforeDate=today;
    }
    else {
        afterDate=today;
        beforeDate=eventDate;
    }
    
    //date 수를 기반으로 year값 추출
    int beforeYear=beforeDate/10000;
    int afterYear=afterDate/10000;
    
    //일단 연도 차이에 따라서 365*연도차이 로 날짜 차이를 구함
    Dday += (afterYear-beforeYear)*365;
    //만약 윤년이면 1을 더해줌(윤년은 366일 이므로 365보다 1이 부족하기 때문에)
    for (int i=beforeYear;i<afterYear;i++)
        if(isLeapYear(i))
            Dday++;
    
    //연도 차이에 따른 날짜 차이는 위에서 다 고려했으므로, 연도를 제외한 날짜 차이에의한 차이 계산 (totalDayWithDate 함수를 이용해서)
    Dday+=(totalDayWithDate(afterDate)-totalDayWithDate(beforeDate))+1;
    
    //Dday와 Today의 선후 관계에 따라 +인지 -인지 출력
    if(eventDate <= today)
        printf("D +%d일\n", Dday);
    else
        printf("D -%d일\n", Dday);
    
}

