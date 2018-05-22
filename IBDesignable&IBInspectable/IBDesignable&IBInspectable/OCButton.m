//
//  OCButton.m
//  IBDesignable&IBInspectable
//
//  Created by EastElsoft on 2018/4/16.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

#import "OCButton.h"

IB_DESIGNABLE
@implementation OCButton

- (void)setConnerRadius:(CGFloat)connerRadius {
    _connerRadius = connerRadius;
    self.layer.cornerRadius = connerRadius;
    self.layer.masksToBounds = YES;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    self.layer.borderWidth = borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;
    self.layer.borderColor = borderColor.CGColor;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
