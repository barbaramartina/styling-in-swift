//
//  Property.swift
//  StylingWithCSS
//
//  Created by Barbara Rodeker on 28/08/16.
//  Copyright © 2016 Barbara Rodeker. All rights reserved.
//

enum Property {
    case backgroundColor(value: String)
    case borderColor(value: String)
    case borderWidth(value: Float)
    case borderRadius(value: Float)
    case fontFamily(value: String)
    case fontSize(value: Float)
    case color(hexaValue: String)
}

extension Property : Hashable, Equatable {
    var hashValue: Int {
        switch self {
        case .backgroundColor(_):
            return "backgroundColor".hash
        case .borderColor(_):
            return "borderColor".hash
        case .borderWidth(_):
            return "borderWidth".hash
        case .borderRadius(_):
            return "borderRadius".hash
        case .fontFamily(_):
            return "fontFamily".hash
        case .fontSize(_):
            return "fontSize".hash
        case .color(_):
            return "color".hash
        }
    }
}

func ==(lhs: Property, rhs: Property) -> Bool {
    switch (lsh,rhs) {
    case (.backgroundColor(_),.backgroundColor(_)): return true
    case (.borderColor(_),.borderColor(_)): return true
    case (.borderRadius(_),.borderRadius(_)): return true
    case (.borderWidth(_),.borderWidth(_)): return true
    case (.fontFamily(_),.fontFamily(_)): return true
    case (.fontSize(_),.fontSize(_)): return true
    case (.color(_),.color(_)): return true
    }
    
    return false
}
