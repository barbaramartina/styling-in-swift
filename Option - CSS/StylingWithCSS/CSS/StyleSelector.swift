//
//  StyleSelector.swift
//  StylingWithCSS
//
//  Created by Barbara Rodeker on 28/08/16.
//  Copyright © 2016 Barbara Rodeker. All rights reserved.
//

enum StyleSelector {
    case styleElement(name: String, properties: [Property])
    case styleId(name: String, properties: [Property])
    case styleClass(name: String, properties: [Property])
}

extension StyleSelector : Hashable {
    var hashValue: Int {
        switch self {
        case .styleElement(_):
            return "styleElement".hash
        case .styleId(_):
            return "styleId".hash
        case .styleClass(_):
            return "styleClass".hash
        }
    }
}

func ==(lhs: StyleSelector, rhs: StyleSelector) -> Bool {
    switch (lhs, rhs) {
    case ( .styleElement(_), .styleElement(_) ):
        return true
    case ( .styleId(_), .styleId(_) ):
        return true
    case ( .styleClass(_), .styleClass(_) ):
        return true
    default: return false
    }
}