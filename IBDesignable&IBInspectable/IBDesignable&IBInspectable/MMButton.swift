//
//  MMButton.swift
//  IBDesignable&IBInspectable
//
//  Created by EastElsoft on 2018/4/16.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

import UIKit

@IBDesignable
class MMButton: UIButton {
    
    // 圆角
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    // 边框宽度
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    // 边框颜色
    @IBInspectable var borderColor: UIColor = UIColor() {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    

}
