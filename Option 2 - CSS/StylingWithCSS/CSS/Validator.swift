//
//  Validator.swift
//  StylingWithCSS
//
//  Created by Barbara Rodeker on 28/08/16.
//  Copyright © 2016 Barbara Rodeker. All rights reserved.
//
import UIKit

typealias PropertyValidator = Property -> Bool
typealias SelectorValidator = StyleSelector -> Bool

struct Validator {
    let propertyValidators: Dictionary<Property,PropertyValidator>
    let selectorsValidators: Dictionary<StyleSelector,SelectorValidator>
    
    init() {
        
        propertyValidators = [ .backgroundColor(value: "") : { property in
            
            switch property {
            case .backgroundColor(let value):
                if let _ = UIColor(hexaAlpha: value) { return true }
            default:
                break
            }
            return false
            
            } ]
        
        selectorsValidators = [ .styleElement(name: "", properties: []) : { element in
            
            switch element {
            case .styleElement(let value):
                return true //TODO
            default:
                break
            }
            return false
            } ]
    }
}
