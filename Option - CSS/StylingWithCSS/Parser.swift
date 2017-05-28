//
//  Parser.swift
//  StylingWithCSS
//
//  Created by Barbara Rodeker on 25/09/16.
//  Copyright © 2016 Barbara Rodeker. All rights reserved.
//

import Foundation

enum ParsingError: ErrorType {
    fileInvalid
}

class Parser {

    var selectors: [StyleSelector] = []
    var properties : [Property] = []
    var p : Property?
    var s : StyleSelector?
    
    static func parse(cssPath: String) -> ([StyleSelector]?,[Property]?,ParsingError?) {
        assert(cssPath.characters.count > 0 && NSFileManager.defaultManager().fileExistsAtPath(cssPath))
        
        let css =
        //TODO:
        // read file, init lexival analyzer, while lexical.next() {  case token: switch: .... }
        
        return (nil,nil,nil)
    }

}

