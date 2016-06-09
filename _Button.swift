//
//  _Button.swift
//  FirstSwiftApp
//
//  Created by Yahia on 7/29/15.
//  Copyright (c) 2015 nichepharma. All rights reserved.
//

import Foundation
import UIKit


// To Add Target To Button  ->>>>>
// button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)




class _Button : UIButton {

       // set Button with Image ..
    init(let btnX : CGFloat = 0.0, let btnY : CGFloat = 0.0 , let btn_imgName : String) {

        func getImage () -> UIImage{
            return _Image(imgX: 0, imgY: 0, img_Name: btn_imgName).image!

        }
        super.init(frame: CGRectMake(btnX, btnY,getImage().size.width, getImage().size.height ))
           self .setImage(getImage(), forState: .Normal)
            self.backgroundColor = UIColor.clearColor()
    }


    // set Button with String Titile ..
    init(let btnX : CGFloat = 0.0, let btnY : CGFloat = 0.0 ,let btnW : CGFloat = 0.0, let btnH : CGFloat = 0.0 , let string_Title : String) {
        super.init(frame: CGRectMake(btnX, btnY,btnW, btnH ))
        self.setTitle(string_Title, forState: .Normal)
        self.showsTouchWhenHighlighted = true;
        self.backgroundColor = UIColor.clearColor()
    }






    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    



    
    
    
    
}

