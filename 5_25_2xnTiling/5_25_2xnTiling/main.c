/*
#include <stdio.h>
long long memo[1001];
long long Fibonacci(int index) {
    if (index>1) {
        if (memo[index]>0)
            return memo[index]%10007;
        else {
            memo[index]=Fibonacci(index-1)+Fibonacci(index-2);
            return memo[index]%10007;
        }
    }
    else if (index==1) {
        memo[index]=1;
        return memo[index];
    }
    else if (index==0) {
        memo[index]=1;
        return memo[index];
    }
    else
        return -1;
}

int main(int argc, const char * argv[]) {
    int input;
    scanf("%d",&input);
    
    printf("%lld\n",Fibonacci(input));
    return 0;
}
*/

#include <stdio.h>
long long memo[1001];
long long Fibonacci(int index) {
    if (index>1) {
        if (memo[index]>0)
            return memo[index]%10007;
        else {
            memo[index]=Fibonacci(index-1)+2*Fibonacci(index-2);
            return memo[index]%10007;
        }
    }
    else if (index==1) {
        memo[index]=1;
        return memo[index];
    }
    else if (index==0) {
        memo[index]=1;
        return memo[index];
    }
    else
        return -1;
}

int main(int argc, const char * argv[]) {
    int input;
    scanf("%d",&input);
    
    printf("%lld\n",Fibonacci(input));
    return 0;
}


