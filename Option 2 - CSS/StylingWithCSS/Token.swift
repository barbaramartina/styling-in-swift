//
//  Token.swift
//  StylingWithCSS
//
//  Created by Barbara Rodeker on 25/09/16.
//  Copyright © 2016 Barbara Rodeker. All rights reserved.
//

enum Token {
    case selector(s: StyleSelector)
    case property(p: Property)
    case valueString(v: String)
    case valueNumeric(v: Float)
    case startCurlyBrace(v: String)
    case endCurlyBrace(v: String)
    case semicolon(v: String)
    case colon(v: String)
}
