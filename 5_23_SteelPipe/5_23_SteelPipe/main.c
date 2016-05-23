//
//  main.c
//  5_23_SteelPipe
//
//  Created by 허홍준 on 2016. 5. 23..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#include <stdio.h>
#include <string.h>

char input[100000];
int pipes[100000][2];
int laser[100000];

int main(int argc, const char * argv[]) {
    
    scanf("%s",input);
    
    int size = (int)strlen(input);
    int laserSize=0;
    int pipesIndex=0;
    
    for (int i=0; i<100000; i++) {
        pipes[i][1]=-1;
    }
    
    for (int i=0; i<size; i++) {
        if (input[i]=='(') {
            if (i<size-1) {
                if (input[i+1]==')') {
                    laser[laserSize]=i;
                    laserSize++;
                }
                else {
                    pipes[pipesIndex][0]=i;
                    pipesIndex++;
                }
            }
        }
        
        
        else if (input[i]==')')
            if (i>0) {
                if (input[i-1]==')') {
                    int j=pipesIndex-1;
                    while (pipes[j][1]!=-1)
                        j--;
                    pipes[j][1]=i;
                }
            }
    }
    
    int pipesSize=pipesIndex;
    int piece=0;
    
    
    for (int i=0; i<pipesSize; i++) {
        int pieceTemp=1;
        for (int j=0; j<laserSize; j++) {
            if ((laser[j]>pipes[i][0])&&(laser[j]<pipes[i][1]))
                pieceTemp++;
        }
        piece+=pieceTemp;
    }
    
    printf("%d\n",piece);
    
    /*
    for (int i=0; i<laserSize; i++)
        printf("%d ",laser[i]);
    
    
    printf("\n");
    
    for (int i=0; i<pipesSize; i++)
        printf("%d %d\n",pipes[i][0], pipes[i][1]);
    */
    
    
    
    return 0;
}
