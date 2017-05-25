//
//  StyleHelper.swift
//  Styling
//
//  Created by Barbara Rodeker on 06/08/16.
//  Copyright © 2016 Barbara Rodeker. All rights reserved.
//

import UIKit

struct StyleHelper {

    static let sharedInstance = StyleHelper()
    let styles: [String:AnyObject]?
    
    init() {
        let stylesPath = Bundle.main.path(forResource: "Styles", ofType: "plist")!
        styles =  NSDictionary(contentsOfFile: stylesPath) as? Dictionary
    }

    func colorWithKey(_ k: String) -> UIColor {
        
        if let s = styles, let info = s[k],
            let r = info["r"] as? NSNumber,
            let g = info["g"] as? NSNumber,
            let b = info["b"] as? NSNumber,
            let a = info["alpha"] as? NSNumber {
            
            return UIColor(red: CGFloat(r.floatValue),
                           green: CGFloat(g.floatValue),
                           blue: CGFloat(b.floatValue),
                           alpha: CGFloat(a.floatValue))
        }
        return UIColor.darkText
    }
    
    func font(_ nameKey: String, sizeKey: String) -> UIFont {
        
        if let font = styles?[nameKey] as? String,
            let size = styles?[sizeKey] as? NSNumber,
            let f = UIFont(name: font, size: CGFloat(size.floatValue)) {
            
            return f
        }
        return UIFont()
    }

}
