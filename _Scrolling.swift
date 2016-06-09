//
//  _Scrolling.swift
//  FirstSwiftApp
//
//  Created by Yahia on 8/3/15.
//  Copyright (c) 2015 nichepharma. All rights reserved.
//

import UIKit


@objc protocol ScrollDelegate {
 optional func didScroll(let slideNumber : Int) ;
 optional func didEndScroll(let slideNumber : Int) ;
 optional func didEndScrollWithAnimation(let slideNumber : Int) ;
}


class _Scrolling: UIScrollView , UIScrollViewDelegate {


    var sDelegate : ScrollDelegate?


    init(frame: CGRect , let numberOfSlides : Int = 0 ) {

        super.init(frame: frame)

        let sizeOfWidth : CGFloat = CGFloat  (self.frame.width ) * CGFloat (numberOfSlides)
        self.contentSize =  CGSizeMake(sizeOfWidth , self.frame.height);
        //   _scrolling__.autoresizingMask=UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        self.delegate = self
        self.bounces = false
        self.scrollEnabled = true
        self.clipsToBounds = true
        self.pagingEnabled = true
        self.autoresizesSubviews = false
        self.canCancelContentTouches = true
        self.showsVerticalScrollIndicator = false
        self.backgroundColor=UIColor.clearColor()
        self.indicatorStyle = UIScrollViewIndicatorStyle.Default


    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        let pageNumber :Int = Int((scrollView.contentOffset.x / scrollView.frame.width) )
        sDelegate!.didScroll!(Int(pageNumber))
    }
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let pageNumber  = (scrollView.contentOffset.x / scrollView.frame.width);
        sDelegate!.didEndScroll!(Int(pageNumber))
    }
    func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView) {
        let pageNumber  = Int ( (scrollView.contentOffset.x / scrollView.frame.width) )
            sDelegate!.didEndScrollWithAnimation!(pageNumber)
    }




    //  var  pageNumber = (scrollView.contentOffset.x / scrollView.frame.width);

    /*

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }

    */

}











