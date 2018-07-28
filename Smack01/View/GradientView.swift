//
//  GradientView.swift
//  Smack01
//
//  Created by Frederick Jopp on 28.07.18.
//  Copyright © 2018 Frederick Jopp. All rights reserved.
//

import UIKit

@IBDesignable // will be able to work in storyboard

class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1) {
        didSet{
            self.setNeedsLayout() // will update the layout when we make changes in the storyboard
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) {
        didSet{
            self.setNeedsLayout() // will update the layout when we make changes in the storyboard
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()           // creating a gradient layer
        gradientLayer.colors = [topColor.cgColor,bottomColor.cgColor] //adding the colors for the gradient layer
        gradientLayer.startPoint = CGPoint(x: 0, y: 0) //Start Point
        gradientLayer.endPoint = CGPoint(x: 1, y: 1) // End Point
        gradientLayer.frame = self.bounds           //setting the size of the layer too the whole screen size
        self.layer.insertSublayer(gradientLayer, at: 0) //adding the layer and placing it at the first layer
    }

}
