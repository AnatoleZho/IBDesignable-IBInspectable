//
//  MMTextField.swift
//  IBDesignable&IBInspectable
//
//  Created by EastElsoft on 2018/4/16.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

import UIKit

@IBDesignable
class MMTextField: UITextField {

    // Left View
    @IBInspectable var leftImage: UIImage = UIImage() {
        didSet {
            self.leftViewMode = .always
            let imageView = UIImageView.init(image: leftImage)
            imageView.clipsToBounds = true
            imageView.contentMode = .scaleAspectFit
            self.leftView?.backgroundColor = UIColor.red
            self.leftView = imageView
        }
    }
    
    @IBInspectable var leftViewWidth: CGFloat = 0 {
        didSet {
            self.leftView?.frame = CGRect.init(x: 0, y: 0, width: leftViewWidth, height: leftViewHeight)
        }
    }
    
    @IBInspectable var leftViewHeight: CGFloat = 0 {
        didSet {
            self.leftView?.frame = CGRect.init(x: 0, y: 0, width: leftViewWidth, height: leftViewHeight)
        }
    }
    
    // right View
    @IBInspectable var rightImage: UIImage = UIImage() {
        didSet {
            self.rightViewMode = .always
            self.rightView?.clipsToBounds = true
            let imageView = UIImageView.init(image: rightImage)
            imageView.contentMode = .scaleAspectFit
            self.rightView?.backgroundColor = UIColor.green
            self.rightView = imageView
        }
    }
    
    @IBInspectable var rightViewWidth: CGFloat = 0 {
        didSet {
            self.rightView?.frame = CGRect.init(x: 0, y: 0, width: rightViewWidth, height: rightViewHeight)
        }
    }
    
    @IBInspectable var rightViewHeight: CGFloat = 0 {
        didSet {
            self.rightView?.frame = CGRect.init(x: 0, y: 0, width: rightViewWidth, height: rightViewHeight)
        }
    }
    
    // Text Rect
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        var rect = bounds
        rect.origin.x += leftViewWidth
        rect.size.width -= (leftViewWidth + rightViewWidth)
        return rect
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        var rect = bounds
        rect.origin.x += leftViewWidth
        rect.size.width -= (leftViewWidth + rightViewWidth)
        return rect
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
