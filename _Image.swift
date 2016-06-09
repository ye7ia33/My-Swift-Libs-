//
//  _Img.swift
//  FirstSwiftApp
//
//  Created by Yahia on 7/30/15.
//  Copyright (c) 2015 nichepharma. All rights reserved.
//


import UIKit

class _Image: UIImageView {

    init(let imgX : CGFloat = 0.0 , let imgY : CGFloat = 0.0 , let img_Name : String) {

        func _Image ()->UIImage{
            let _img  = UIImage(named: img_Name)
            return _img!
        }
        super.init(frame: CGRectMake(imgX, imgY , _Image().size.width,  _Image().size.height))
        self.image = _Image()


    }



    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    

}
