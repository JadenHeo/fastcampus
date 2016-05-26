//
//  WCustomButton.h
//  VendingMachineProject
//
//  Created by youngmin joo on 2016. 5. 13..
//  Copyright © 2016년 WingsCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WCustomButtonDelegate;
@interface WCustomButton : UIView

@property (nonatomic, weak, nullable) id <WCustomButtonDelegate> delegate;

- (void)updateLayout;
- (void)setTitle:(nullable NSString *)title;
- (void)setImageWithName:(nullable NSString *)imageName;

@end


@protocol WCustomButtonDelegate <NSObject>

- (void)didSelecteWCustomButton:(nullable WCustomButton *)customBtn;

@end