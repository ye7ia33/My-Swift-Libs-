//
//  _Indicator.swift
//  FirstSwiftApp
//
//  Created by Yahia on 8/3/15.
//  Copyright (c) 2015 nichepharma. All rights reserved.
//

import UIKit

class _Indicator: UIView {
    
        init() {
            let screenSize: CGRect = UIScreen.mainScreen().bounds
            let _View__IndicatorW : CGFloat =  screenSize.width
            let _View__IndicatorH : CGFloat = screenSize.height
            super.init(frame: CGRectMake(0, 0, _View__IndicatorW, _View__IndicatorH))

            self.backgroundColor = UIColor.darkGrayColor().colorWithAlphaComponent(0.5)

            let loadingView : UIView = UIView()
            loadingView.frame = CGRectMake(0, 0, 100, 100)
            loadingView.center = self.center
            //UIColorFromHex(0x444444, alpha: 0.7)
            loadingView.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.6)
            loadingView.clipsToBounds = true
            loadingView.layer.cornerRadius = 10
            self.addSubview(loadingView)


            let spinner___ : UIActivityIndicatorView = UIActivityIndicatorView()
            spinner___.activityIndicatorViewStyle  =  UIActivityIndicatorViewStyle.WhiteLarge
            spinner___.hidesWhenStopped = true
            spinner___.center = CGPointMake(loadingView.frame.size.width / 2, loadingView.frame.size.height / 2)
            spinner___.backgroundColor=UIColor.clearColor()
            spinner___.startAnimating()
            loadingView.addSubview(spinner___)



            let  _myLabel = _Label(frame: CGRect(x: loadingView.frame.origin.x, y: loadingView.frame.size.height+loadingView.frame.origin.y, width: 230, height: 50), txtString: "Loading Data \n Please Wait ... ",font_Size : 16)
            _myLabel.center = CGPointMake(_View__IndicatorW/2 , _myLabel.frame.origin.y + 20 )
            _myLabel.textColor = UIColor.whiteColor()
            self.addSubview(_myLabel)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }




}
