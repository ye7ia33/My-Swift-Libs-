//
//  _InternetChecked.swift
//  Nervax
//
//  Created by Yahia on 10/26/15.
//  Copyright © 2015 nichepharma. All rights reserved.
//

import UIKit
import Foundation



public class _InternetChecked: NSObject {
    
    private lazy var reachability: NetReachability = NetReachability(hostname: "www.apple.com")
    private var  _internerChecked : Bool = false ;
    
func isConnectedToNetwork()->Bool{
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(_InternetChecked.reachabilityChanged), name: FFReachabilityChangedNotification, object: nil)
        reachability.startNotifier()
    _internerChecked = reachability.currentReachabilityStatus.description;
    
    return _internerChecked
   
    }
    
//    
//    deinit {
//        NSNotificationCenter.defaultCenter().removeObserver(self, name: FFReachabilityChangedNotification, object: nil)
//    }
//    
    func reachabilityChanged() {
       _internerChecked = reachability.currentReachabilityStatus.description;
    }
//
//    @IBAction func checkReachablity() {
//        _internerChecked = reachability.currentReachabilityStatus.description;
//    }
//    
//    func updateUI() {
//        _internerChecked = reachability.currentReachabilityStatus.description;
//    }
//
    

}


