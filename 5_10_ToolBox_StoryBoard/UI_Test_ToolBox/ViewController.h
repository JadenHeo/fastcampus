//
//  ViewController.h
//  UI_Test_ToolBox
//
//  Created by 허홍준 on 2016. 5. 11..
//  Copyright © 2016년 허홍준. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSString *displayText;
    
    CGFloat resultNum;
}

@property (nonatomic, weak) IBOutlet UITextField *displayTextField;
@property (nonatomic, weak) IBOutlet UITextField *inputTextField;

@end

