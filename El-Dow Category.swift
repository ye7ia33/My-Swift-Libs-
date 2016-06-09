//
//  Array+API.swift
//  PromotersApp
//
//  Created by Yahia on 4/19/16.
//  Copyright © 2016 nichepharma.com. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    public func imageFromUrl(urlString: String) {
        if let url = NSURL(string: urlString) {
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
            let request = NSURLRequest(URL: url)
            NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) {
                (response: NSURLResponse?, data: NSData?, error: NSError?) -> Void in
                if let imageData = data as NSData? {
                    self.image = UIImage(data: imageData)

                }
            }
        }
        }
    }



    

    func saveImage ( imgName: String ){

        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        let destinationPath = documentsPath.stringByAppendingString("filename.jpg")
        UIImageJPEGRepresentation(self.image!,1.0)!.writeToFile(destinationPath, atomically: true)
/*
        let pngImageData = UIImagePNGRepresentation(image)
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        let destinationPath = documentsPath.stringByAppendingString(imgName)

        //let jpgImageData = UIImageJPEGRepresentation(image, 1.0)   // if you want to save as JPEG
       pngImageData!.writeToFile(destinationPath, atomically: true)

        
    */
}

}





extension String {

    func replaceSpecialCharacter() -> NSString {
        var strMyString : NSString = self
       strMyString = strMyString.stringByReplacingOccurrencesOfString("&", withString: "and").stringByReplacingOccurrencesOfString("'", withString: "`")
        return strMyString
    }


    //        let  index1 = stringDate.endIndex.advancedBy(stringDate.characters.count)

    
}










extension NSMutableArray {
  
    
    func alphabetArray () -> NSMutableArray  {
     let tempArray =   NSMutableArray()
       
            for x in 0..<self.count{
           tempArray .addObject (self.objectAtIndex(x))
        }
        self.removeAllObjects()
        
        var first_Litter : String = ""
        
        
        for x in 0..<tempArray.count  {
            
             first_Litter = tempArray[x].substringToIndex(1)
            
            let chkLatter =  self.containsObject(first_Litter ) ? "Yes" : "No"
            
            if (chkLatter == "No")  {  self.addObject(first_Litter)  }

            
        }
        
    return tempArray ;
    }


    func subStringToArray (let str_Data : String ) -> NSMutableArray {
        return  NSMutableArray(array: str_Data.componentsSeparatedByString("|"))
    }






    

}






