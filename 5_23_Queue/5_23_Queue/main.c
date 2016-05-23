#include <stdio.h>
#include <string.h>

int queue[10000];
int begin=0;
int end=0;


int main(int argc, const char * argv[]) {
    int n;
    scanf("%d",&n);
    
    for (int i=0; i<n; i++) {
        char cmd[100];
        scanf("%s", cmd);
        
        if(strcmp(cmd, "pop")==0) {
            if (begin == end)
                printf("-1\n");
            else {
                printf("%d\n",queue[begin]);
                begin+=1;
            }
        }
        
        else if (strcmp(cmd, "size")==0) {
            if (begin > end)
                printf("-1\n");
            else
                printf("%d\n",end-begin);
        }
        
        else if (strcmp(cmd, "empty")==0) {
            if (begin == end)
                printf("1\n");
            else
                printf("0\n");
        }
        
        else if (strcmp(cmd, "front")==0) {
            if (begin == end)
                printf("-1\n");
            else
                printf("%d\n", queue[begin]);
        }
        
        else if (strcmp(cmd, "back")==0) {
            if (begin == end)
                printf("-1\n");
            else
                printf("%d\n", queue[end-1]);
        }
        
        else if (strcmp(cmd, "push")==0) {
            int input;
            scanf("%d",&input);
            queue[end]=input;
            end+=1;
        }
        
        else
            printf("command input error\n");
    }
    
    return 0;
}
