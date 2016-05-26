#include <stdio.h>

int memo[1000001];
const int MAX_NUM=1000001;

int min(int a, int b, int c) {
    int t=a;
    if(b<t)
        t=b;
    if(c<t)
        t=c;
    return t;
}

int minTimes(int input) {
    if ((input%3==0) && (input%2==0))
        return min(memo[input/3], memo[input/2], memo[input-1])+1;
    else if (input%3==0)
        return min(memo[input/3], memo[input-1], MAX_NUM)+1;
    else if (input%2==0)
        return min(memo[input/2], memo[input-1], MAX_NUM)+1;
    else
        return memo[input-1]+1;
}

int main(int argc, const char * argv[]) {
    
    int input;
    scanf("%d",&input);
    
    memo[1]=0;
    memo[2]=1;
    memo[3]=1;
    
    for (int i=4; i<=input; i++) {
        memo[i]=minTimes(i);
    }
    
    printf("%d\n", memo[input]);
    
    
    return 0;
}
