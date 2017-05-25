//
//  Styles.swift
//  StylingWithUIAppearance
//
//  Created by Barbara Rodeker on 06/08/16.
//  Copyright © 2016 Barbara Rodeker. All rights reserved.
//

import UIKit

protocol Style {
    
    var labelFont: UIFont { get }
    var btnFont: UIFont { get }
    
    var labelColor: UIColor { get }
    
    var btnColor: UIColor { get }
    var btnBGColor: UIColor { get }

    var noLikeBtnColor: UIColor { get }
    var noLikeBGBtnColor: UIColor { get }
    
}

struct Default: Style {
    
    var labelFont: UIFont = UIFont(name: "Farah", size: 48)!
    var btnFont: UIFont = UIFont(name: "Farah", size: 33)!
    
    var labelColor = UIColor.blueColor()
    
    var btnColor = UIColor.yellowColor()
    var btnBGColor = UIColor.darkGrayColor()

    var noLikeBtnColor = UIColor.redColor()
    var noLikeBGBtnColor = UIColor.darkGrayColor()
}

struct StyleManager {
    
    static let sharedInstance = StyleManager()
    
    func applyStyle(s: Style) {
        
        let labelAppearance = UILabel.appearance()
        labelAppearance.font = s.labelFont
        labelAppearance.textColor = s.labelColor
        
        let btnAppearance = UIButton.appearance()
        btnAppearance.backgroundColor = s.btnBGColor
        btnAppearance.setTitleColor(s.btnColor, forState: .Normal)
        
        btnAppearance.layer.cornerRadius = 15
        
        
        let btnNoLikeAppearance = NoLikeButton.appearance()
        btnNoLikeAppearance.backgroundColor = s.noLikeBGBtnColor
        btnNoLikeAppearance.setTitleColor(s.noLikeBtnColor, forState: .Normal)
        
    }
    
}