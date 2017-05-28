//
//  ViewController.swift
//  Styling
//
//  Created by Barbara Rodeker on 05/08/16.
//  Copyright © 2016 Barbara Rodeker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var noLikeBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
            mainTitle.textColor = StyleHelper.sharedInstance.colorWithKey("title-color")
            mainTitle.font = StyleHelper.sharedInstance.font("main-font", sizeKey: "header-font-size")
        
            let btnColor = StyleHelper.sharedInstance.colorWithKey("btn-color")
        
            likeBtn.setTitleColor(btnColor, for: UIControlState())
            likeBtn.titleLabel?.font = StyleHelper.sharedInstance.font("main-font", sizeKey: "btn-font-size")
            likeBtn.titleLabel?.adjustsFontSizeToFitWidth = true
            
            noLikeBtn.setTitleColor(btnColor, for: UIControlState())
            noLikeBtn.titleLabel?.font = StyleHelper.sharedInstance.font("main-font", sizeKey: "btn-font-size")
            noLikeBtn.titleLabel?.adjustsFontSizeToFitWidth = true
    }
}

