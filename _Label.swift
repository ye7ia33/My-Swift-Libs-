//
//  _Label.swift
//  FirstSwiftApp
//
//  Created by Yahia on 8/3/15.
//  Copyright (c) 2015 nichepharma. All rights reserved.
//

import UIKit

//http://iosfonts.com/
//http://stackoverflow.com/questions/1054558/vertically-align-text-within-a-uilabel/1054681#1054681

class _Label: UILabel {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.*/


    init(let frame : CGRect ,let  txtString : String , let font_Size :CGFloat = 0  ) {
        super.init(frame: frame)
        //        lbl___.frame = CGRectMake(300, 400, 400, 60)
        self.backgroundColor=UIColor.redColor()
        self.text = txtString;
        self.textColor = UIColor.blackColor()
        self.backgroundColor = UIColor.clearColor()
        self.font = UIFont(name: "Verdana", size: font_Size)
        self.textAlignment = .Center
        self.numberOfLines=0;

    }



    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }







}
