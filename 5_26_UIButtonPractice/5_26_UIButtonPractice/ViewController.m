//
//  ViewController.m
//  5_26_UIButtonPractice
//
//  Created by 허홍준 on 2016. 5. 26..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) UILabel *displayText;
@property (nonatomic,weak) UIButton *beforSelectedBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.tag=1;
    [btn1 setFrame:CGRectMake(50, 50, 100, 50)];
    [btn1 addTarget:self action:@selector(onTouchUpInsideBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 setTitle:@"1번 버튼" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [btn1 setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    //[btn1 setImage:[UIImage imageNamed:@"sulhyeon1.jpg"] forState:UIControlStateNormal];
    [btn1 setBackgroundImage:[UIImage imageNamed:@"sulhyeon2"] forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.tag=2;
    [btn2 setFrame:CGRectMake(200, 50, 100, 50)];
    [btn2 addTarget:self action:@selector(onTouchUpInsideBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn2 setTitle:@"2번 버튼" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [btn2 setTitleColor:[UIColor yellowColor] forState:UIControlStateSelected];
    [btn2 setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.tag=3;
    [btn3 setFrame:CGRectMake(50, 150, 100, 50)];
    [btn3 addTarget:self action:@selector(onTouchUpInsideBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn3 setTitle:@"3번 버튼" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [btn3 setTitleColor:[UIColor greenColor] forState:UIControlStateSelected];
    [btn3 setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:btn3];
    
    UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn4.tag=4;
    [btn4 setFrame:CGRectMake(200, 150, 100, 50)];
    [btn4 addTarget:self action:@selector(onTouchUpInsideBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn4 setTitle:@"4번 버튼" forState:UIControlStateNormal];
    [btn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn4 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [btn4 setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
    [btn4 setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:btn4];
    
    _displayText= [[UILabel alloc]initWithFrame:CGRectMake(50, 250, 250, 100)];
    [_displayText setTextColor:[UIColor whiteColor]];
    [_displayText setTextAlignment:NSTextAlignmentCenter];
    [_displayText setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:_displayText];
}

- (void)onTouchUpInsideBtn:(UIButton *)sender {
    NSInteger selectedBtnNum = sender.tag;
    _beforSelectedBtn.selected=NO;
    _beforSelectedBtn=sender;
    
    if(sender.isSelected)
        sender.selected=NO;
    else
        sender.selected=YES;
    
    _displayText.text = [NSString stringWithFormat:@"%zd 선택", selectedBtnNum];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
