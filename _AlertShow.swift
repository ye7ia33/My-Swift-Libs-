//
//  _AlertShow.swift
//  PromotersApp
//
//  Created by Yahia on 4/25/16.
//  Copyright © 2016 nichepharma.com. All rights reserved.
//

import UIKit

class _AlertShow: NSObject {

//
//        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.Alert)
//        self.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
//        window!.rootViewController!.presentViewController(alert, animated: true, completion: nil)


    func show(let representOnView : AnyObject ) {
        let alert = UIAlertController(title: ">>>>", message: "Test", preferredStyle: .ActionSheet )
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
        alert.popoverPresentationController?.sourceView = representOnView.view
        alert.popoverPresentationController?.sourceRect = CGRectMake(representOnView.view.bounds.size.width / 2.0 - 105,
                                                                     representOnView.view.bounds.size.height / 2.0 + 70, 1.0, 1.0);

        UIApplication.sharedApplication().keyWindow?.rootViewController?.presentViewController(alert, animated: true, completion: nil)

    }



    init(let str_title : String , let str_msg : String , let str_btn : String) {
        super.init()
        let _Login_alert = UIAlertView(title:str_title , message: str_msg , delegate: nil, cancelButtonTitle: str_btn  )
        _Login_alert.show()

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
