//
//  MMLabel.swift
//  IBDesignable&IBInspectable
//
//  Created by EastElsoft on 2018/4/16.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

import UIKit

@IBDesignable
class MMLabel: UILabel {

    // 边距
    @IBInspectable var insetTop: CGFloat = 0 {
        didSet {
            
        }
    }
    
    @IBInspectable var insetLeft: CGFloat = 0 {
        didSet {
            
        }
    }
    
    @IBInspectable var insetBottom: CGFloat = 0 {
        didSet {
            
        }
    }
    
    @IBInspectable var insetRight: CGFloat = 0 {
        didSet {
            
        }
    }
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: UIEdgeInsetsInsetRect(rect, UIEdgeInsetsMake(insetTop, insetLeft, insetBottom, insetRight)))
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
