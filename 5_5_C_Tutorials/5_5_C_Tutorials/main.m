//
//  main.m
//  fastcamp_5_5
//
//  Created by 허홍준 on 2016. 5. 5..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <Foundation/Foundation.h>

int avgRating ( float avgScore ) {
    if (avgScore >= 90)
        return 1;
    else if (avgScore >=80 )
        return 2;
    else if (avgScore >=70 )
        return 3;
    else if (avgScore >=60 )
        return 4;
    else if (avgScore >=50 )
        return 5;
    else if (avgScore >=40 )
        return 6;
    else if (avgScore >=30 )
        return 7;
    else if (avgScore >=20 )
        return 8;
    else if (avgScore >=10 )
        return 9;
    
    return 0;
}

void scholarshipWithGrade(int grade) {
    switch (grade) {
        case 1:
            printf("이 학생은 전액장학금 대상자입니다\n\n");
            break;
        case 2:
            printf("이 학생은 50%%장학금 대상자입니다.\n\n");
            break;
        case 3:
            printf("이 학생은 25%%장학금 대상자입니다\n\n");
            break;
        default:
            printf("이 학생은 장학금 대상자가 아닙니다.\n\n");
                   
    }
}

int absoluteNum(int inputNum) {
    if (inputNum >=0)
        return inputNum;
    else
        return -inputNum;
}

void checkAlphabet(char input) {
    if (input >=97)
        printf("%c는 소문자 입니다.\n", input);
    else if (input >=65)
        printf("%c는 대문자 입니다.\n", input);
    else if (input >=48)
        printf("%c는 숫자 입니다.\n", input);
    else
        printf("%c를 인식할 수 없습니다.\n", input);
}

void checkLeapYear(int year) {
    if ((year%4==0 && year%100!=0) || year%400==0)
        printf("%d년은 윤년입니다.\n",year);
    else
        printf("%d년은 윤년이 아닙니다.\n",year);
}

void getMultiplicationTable(int input) {
    int temp=1;
    for (int i=1;i<=input;i++)
        temp=temp*i;
    printf("%d 팩토리얼은 %d 입니다.\n",input, temp);
}

//369게임 input제한 없이 구현
void game(int input) {
    //1의 자리를 비교할 임시 변수
    int finalNum;
    
    //1부터 input까지 3,6,9게임 진행
    for (int i=1;i<=input;i++) {
        //3,6,9가 들어갔는지 아닌지에 대한 bool변수
        bool check=false;
        finalNum = i;
        //자릿수를 줄여나가기 위한 무한루프
        for (int j=0;1;j++) {
            if (finalNum%10==3 || finalNum%10==6 || finalNum%10==9)
                check=true;
            
            //일의자리가 3,6,9인지 비교 완료 후, 제거
            finalNum=finalNum/10;
            //10으로 나눴을 때 0이면 ; 이미 한자리 수라면 for 무한루프 탈출
            if(finalNum==0)
                break;
        }
        if(check)
            printf("*, ");
        if(!check)
            printf("%d, ",i);
    }
}

//삼각수 구하기
void triangularNum(int input) {
    //합을 저장하기 위한 변수 sum 생성, 0으로 초기화
    int sum=0;
    //1부터 input 범위까지 계속 sum에 더해줌
    for (int i=1;i<=input;i++)
        sum+=i;
    
    printf("Triangular Number for %d is %d\n",input,sum);
}

//삼각수 구하기2
void triangularsRangNum(int min, int max) {
    //범위 내의 수들에 대해서 index를 하나씩 증가
    for (int i=min;i<=max;i++)
        //만약 5의 배수이면, 삼각수 구하기 함수 호출
        if(i%5 == 0)
            triangularNum(i);
}

//각 자리수 더하는 함수
void addAllNum(int input) {
    //합을 저장하기 위한 sum 생성, 0으로 초기화
    int sum=0;
    //index를 input으로 초기화하고, 0이 될때까지 게속 10으로 나누어 마지막 자리수 제거
    for(int i=input;i!=0;i=i/10)
        //sum에 10으로 나눈 나머지, 즉 1의 자리수들을 계속 더함
        sum+=i%10;
    
    printf("%d의 각 자리수의 합은 %d 입니다.\n", input, sum);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        /*
        float input=3.255;
        int temp = input*100;
        float output;
        if ((int)(input*1000)%10 < 5)
            output=(float)temp/100;
        else
            output=(float)temp/100 + 0.01;
        printf("%f\n",output);
        
        
        float avgScore = 87.45;
        printf("이 학생의 평균은 %d등급 입니다.\n\n",avgRating(avgScore));
        
        scholarshipWithGrade(avgRating(avgScore));
        
        printf("%d\n", absoluteNum(-3));
        
        checkAlphabet('4');
        */
        
        //getMultiplicationTable(3);
        
        //game(400);
        addAllNum(5792);
    }
    return 0;
}
