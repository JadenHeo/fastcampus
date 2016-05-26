//
//  ViewController.m
//  5_24_ViewMakingTest
//
//  Created by 허홍준 on 2016. 5. 24..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    /*
    UIView *leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width/2, self.view.frame.size.height)];
    [leftView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:leftView];
    
    
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width/2, self.view.frame.size.width/2)];
    [topView setBackgroundColor:[UIColor blueColor]];
    [leftView addSubview:topView];
    
    
    UIView *rightView = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2, 0, self.view.frame.size.width/2, self.view.frame.size.height)];
    [rightView setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:rightView];
    
    
    UIView *bottomView = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height-self.view.frame.size.width/2, self.view.frame.size.width/2, self.view.frame.size.width/2)];
    [bottomView setBackgroundColor:[UIColor redColor]];
    [rightView addSubview:bottomView];
    
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(20, 20, self.view.frame.size.width-40, self.view.frame.size.height-40)];
    [view setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:view];
    
    UIView *subView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, view.frame.size.width-40, view.frame.size.height-40)];
    [subView setBackgroundColor:[UIColor yellowColor]];
    [view addSubview:subView];
    
    */
    
    /*
    UIView *mainView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height/2)];
    [self.view addSubview:mainView];
    
    UIView *subView = [[UIView alloc]initWithFrame:CGRectMake(10, 70, mainView.frame.size.width/2+50, mainView.frame.size.height/2-20)];
    [subView setBackgroundColor:[UIColor blackColor]];
    [mainView addSubview:subView];
    
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(10, 20, 200, 35)];
    [label1 setText:@"예제 화면 입니다."];
    [label1 setTextColor:[UIColor blackColor]];
    [label1 setTextAlignment:NSTextAlignmentLeft];
    [mainView addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(mainView.frame.size.width-220, 30, 200, 35)];
    [label2 setText:@"예쁜 레이블 입니다."];
    [label2 setTextColor:[UIColor redColor]];
    [label2 setTextAlignment:NSTextAlignmentRight];
    [mainView addSubview:label2];
    
    UILabel *label3 = [[UILabel alloc]initWithFrame:CGRectMake(mainView.frame.size.width/2-100, mainView.frame.size.height/2+70, 200, 35)];
    [label3 setText:@"중앙에 있는 레이블 입니다."];
    [label3 setTextColor:[UIColor blackColor]];
    [label3 setTextAlignment:NSTextAlignmentCenter];
    [mainView addSubview:label3];
    
    UILabel *label4 = [[UILabel alloc]initWithFrame:CGRectMake(mainView.frame.size.width/2-100, mainView.frame.size.height/2+100, 200, 35)];
    [label4 setText:@"폰트는 20입니다."];
    [label4 setTextColor:[UIColor blackColor]];
    [label4 setTextAlignment:NSTextAlignmentCenter];
    [label4 setFont:[UIFont systemFontOfSize:20]];
    [mainView addSubview:label4];
    
    UILabel *label5 = [[UILabel alloc]initWithFrame:CGRectMake(subView.frame.size.width-200, subView.frame.size.height-35, 200, 35)];
    [label5 setText:@"View위에 레이블 입니다."];
    [label5 setTextColor:[UIColor whiteColor]];
    [label5 setTextAlignment:NSTextAlignmentRight];
    [subView addSubview:label5];
    */
    
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-150, self.view.frame.size.height/2-300, 300, 300)];
    [imgView setImage:[UIImage imageNamed:@"sulhyeon2"]];
    [imgView setContentMode:UIViewContentModeScaleAspectFit];
    [imgView setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:imgView];
    
    UIImageView *imgView2 = [[UIImageView alloc]initWithFrame:CGRectMake(imgView.frame.size.width/2-75, imgView.frame.size.height/2-75, 150, 150)];
    [imgView2 setImage:[UIImage imageNamed:@"sulhyeon1.jpg"]];
    [imgView2 setContentMode:UIViewContentModeScaleAspectFit];
    [imgView2 setBackgroundColor:[UIColor redColor]];
    [imgView addSubview:imgView2];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
