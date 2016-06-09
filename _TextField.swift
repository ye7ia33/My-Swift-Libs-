//
//  _TextField.swift
//  FirstSwiftApp
//
//  Created by Yahia on 8/3/15.
//  Copyright (c) 2015 nichepharma. All rights reserved.
//

import UIKit
import Foundation


class _TextField: UITextField  {

    init(frame: CGRect , let txt_Hint : String) {
        super.init(frame: frame)
        self.layer.borderWidth = 0.3;
        self.layer.borderColor =  UIColor.darkGrayColor().CGColor
        self.placeholder = txt_Hint;
        self.layer.cornerRadius = 5;
        // txt.backgroundColor = UIColor.orangeColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
