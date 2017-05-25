//
//  ViewController.swift
//  Styling
//
//  Created by Barbara Rodeker on 05/08/16.
//  Copyright © 2016 Barbara Rodeker. All rights reserved.
//

import UIKit
import Protocol_UI

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var noLikeBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

public protocol BtnBgColor : BackgroundColor {}

public extension BtnBgColor {
     var pBackgroundColor : UIColor { return UIColor.greenColor() }
}

protocol NoLikeBtnBgColor : BackgroundColor {}

extension NoLikeBtnBgColor {
    var pBackgroundColor : UIColor { return UIColor.redColor() }
}


extension UIButton: BtnBgColor {}

class NoLikeBtn : UIButton, NoLikeBtnBgColor {
    
}

