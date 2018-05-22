//
//  OCButton.h
//  IBDesignable&IBInspectable
//
//  Created by EastElsoft on 2018/4/16.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OCButton : UIButton

@property (nonatomic, assign) IBInspectable CGFloat connerRadius;
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, strong) IBInspectable UIColor *borderColor;

@end
