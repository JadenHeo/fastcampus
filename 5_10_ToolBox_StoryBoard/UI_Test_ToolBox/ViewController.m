//
//  ViewController.m
//  UI_Test_ToolBox
//
//  Created by 허홍준 on 2016. 5. 11..
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

- (void)initData
{
    resultNum=0;
    displayText=@"";
    
    [self.inputTextField setText:@""];
    [self.displayTextField setText:@"- - - - - - - - - - - -"];
}

- (CGFloat)inchTocm:(CGFloat)inch {
    return inch*2.54;
}
- (CGFloat)cmToinch:(CGFloat)cm {
    return cm/2.54;
}
- (CGFloat)m2ToPy:(CGFloat)m2 {
    return m2/3.33;
}
- (CGFloat)pyTom2:(CGFloat)py {
    return py*3.33;
}
- (CGFloat)FToC:(CGFloat)F {
    return (5.0/9.0)*(F-32);
}
- (CGFloat)changeCtoF:(CGFloat)C {
    return (9.0/5.0)*C+32;
}
- (CGFloat)kBToMB:(CGFloat)kB {
    return kB/1024;
}
- (CGFloat)MBToGB:(CGFloat)MB {
    return MB/1024;
}
- (CGFloat)kBToGB:(CGFloat)kB {
    return kB/1048576;
}


- (IBAction)onTouchUpInsideCMBtn:(id)sender
{
    CGFloat inputNum;
    inputNum = self.inputTextField.text.floatValue;
    
    resultNum=[self cmToinch:inputNum];
    
    [self.inputTextField setText:[NSString stringWithFormat:@"%.2f cm",inputNum]];
    [self.displayTextField setText:[NSString stringWithFormat:@"%.2f inch",resultNum]];
}

- (IBAction)onTouchUpInsideINCHBtn:(id)sender
{
    CGFloat inputNum;
    inputNum = self.inputTextField.text.floatValue;
    
    resultNum=[self inchTocm:inputNum];
    
    [self.inputTextField setText:[NSString stringWithFormat:@"%.2f inch",inputNum]];
    [self.displayTextField setText:[NSString stringWithFormat:@"%.2f cm",resultNum]];
}

- (IBAction)onTouchUpInsideM2Btn:(id)sender
{
    CGFloat inputNum;
    inputNum = self.inputTextField.text.floatValue;
    
    resultNum=[self m2ToPy:inputNum];
    
    [self.inputTextField setText:[NSString stringWithFormat:@"%.2f m^2",inputNum]];
    [self.displayTextField setText:[NSString stringWithFormat:@"%.2f 평",resultNum]];
}

- (IBAction)onTouchUpInsidePYUNGBtn:(id)sender
{
    CGFloat inputNum;
    inputNum = self.inputTextField.text.floatValue;
    
    resultNum=[self pyTom2:inputNum];
    
    [self.inputTextField setText:[NSString stringWithFormat:@"%.2f 평",inputNum]];
    [self.displayTextField setText:[NSString stringWithFormat:@"%.2f m^2",resultNum]];
}

- (IBAction)onTouchUpInsideFAHRENHEITBtn:(id)sender
{
    CGFloat inputNum;
    inputNum = self.inputTextField.text.floatValue;
    
    resultNum=[self FToC:inputNum];
    
    [self.inputTextField setText:[NSString stringWithFormat:@"%.2f F",inputNum]];
    [self.displayTextField setText:[NSString stringWithFormat:@"%.2f C",resultNum]];
}

- (IBAction)onTouchUpInsideCELCIUSBtn:(id)sender
{
    CGFloat inputNum;
    inputNum = self.inputTextField.text.floatValue;
    
    resultNum=[self changeCtoF:inputNum];
    
    [self.inputTextField setText:[NSString stringWithFormat:@"%.2f C",inputNum]];
    [self.displayTextField setText:[NSString stringWithFormat:@"%.2f F",resultNum]];
}

- (IBAction)onTouchUpInsideMBBtn:(id)sender
{
    CGFloat inputNum;
    inputNum = self.inputTextField.text.floatValue;
    
    resultNum=[self kBToMB:inputNum];
    
    [self.inputTextField setText:[NSString stringWithFormat:@"%.2f kB",inputNum]];
    [self.displayTextField setText:[NSString stringWithFormat:@"%.2f MB",resultNum]];
}

- (IBAction)onTouchUpInsideGBBtn:(id)sender
{
    CGFloat inputNum;
    inputNum = self.inputTextField.text.floatValue;
    
    resultNum=[self kBToGB:inputNum];
    
    [self.inputTextField setText:[NSString stringWithFormat:@"%.2f kB",inputNum]];
    [self.displayTextField setText:[NSString stringWithFormat:@"%.2f GB",resultNum]];
}

- (IBAction)onTouchUpInsideRESETBtn:(id)sender
{
    [self initData];
}








@end
