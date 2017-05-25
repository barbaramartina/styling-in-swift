//
//  Color+Hexa.swift
//  StylingWithCSS
//
//  Created by Barbara Rodeker on 25/09/16.
//  Copyright © 2016 Barbara Rodeker. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(r: Int, g: Int, b: Int, alpha: Float) {
        assert(r >= 0 && r <= 255, "Invalid red component")
        assert(g >= 0 && g <= 255, "Invalid green component")
        assert(b >= 0 && b <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(alpha))
    }
    
    convenience init?(hexaAlpha: String) {
        let values = hexaAlpha.characters.split(";").map{ String($0)}
        
        if let hexa = values.first, hexaValue = Int(hexa) where values.count > 1 {
            if Float(values[1]) != nil {
                self.init(r:(hexaValue >> 16) & 0xff, g:(hexaValue >> 8) & 0xff, b:hexaValue & 0xff, alpha: Float(values[1])!)
            } else {
                return nil
            }
        } else {
            return nil
        }
    }
}

