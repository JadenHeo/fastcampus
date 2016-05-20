//
//  ViewController.m
//  fastcamp_5_4
//
//  Created by 허홍준 on 2016. 5. 4..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//데이터 초기화
- (void)initData
{
    resultNum = 0;
    operatorBuffer =@"";
    displayText = @"";
    
    [self.displayTextField setText:[NSString stringWithFormat:@"%zd",resultNum]];
}

- (void)operationAdd:(NSInteger)secondNum
{
    resultNum=resultNum+secondNum;
}

- (void)operationSub:(NSInteger)secondNum
{
    resultNum=resultNum-secondNum;
}

- (void)operationMulti:(NSInteger)secondNum
{
    resultNum=resultNum*secondNum;
}

- (void)operationDividing:(NSInteger)secondNum
{
    resultNum=resultNum/secondNum;
}

- (void)operatingWithSecondNum:(NSInteger)num
{
    if (operatorBuffer.length !=0) {
        
        if ([operatorBuffer isEqualToString:@"+"])
        {
            [self operationAdd:num];
        }
        else if ([operatorBuffer isEqualToString:@"-"])
        {
            [self operationSub:num];
        }
        else if ([operatorBuffer isEqualToString:@"x"])
        {
            [self operationMulti:num];
        }
        else if ([operatorBuffer isEqualToString:@"/"])
        {
            [self operationDividing:num];
        }
        else
        {
            NSLog(@"error");
        }
    }else
    {
        resultNum =  num;
    }
}

- (IBAction)onTouchUpInsideNumberBtn:(id)sender
{
    NSString *numberStr = ((UIButton *)sender).titleLabel.text;
    displayText = [displayText stringByAppendingString:numberStr];
    
    [self.displayTextField setText:displayText];
}

- (IBAction)onTouchUpInsideOperationBtn:(UIButton *)sender
{
    //처음엔 숫자가 들어가야 한다.
    if (displayText.length>0) {
        //기존에 display에 있는 숫자를 결과에 추가한다.
        [self operatingWithSecondNum:displayText.integerValue];
        
        //result를 텍스트로 변경해서 표시
        [self.displayTextField setText:[NSString stringWithFormat:@"%zd",resultNum]];
        //displaytext 지워준다.
        displayText=@"";
        //오퍼레이션을 버퍼에 넣는다.
        operatorBuffer = sender.titleLabel.text;
    }
    else
    {
        //연산기호 변경
        if(operatorBuffer.length != 0) {
            operatorBuffer = sender.titleLabel.text;
        }
    }
}

- (IBAction)onTouchUpInsideResultBtn:(id)sender
{
    if (displayText.length>0) {
        [self operatingWithSecondNum:displayText.integerValue];
        [self.displayTextField setText:[NSString stringWithFormat:@"%zd",resultNum]];
    
    displayText = @"";
    }
}

- (IBAction)onTouchUpInsideCancelBtn:(id)sender
{
    [self initData];
}


@end
