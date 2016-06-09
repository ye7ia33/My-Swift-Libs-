//
//  _Table.swift
//  FirstSwiftApp
//
//  Created by Yahia on 8/3/15.
//  Copyright (c) 2015 nichepharma. All rights reserved.
//

import UIKit

class _Table: UITableView  {

    init(frame: CGRect) {
        super.init(frame: frame, style: .Plain)
        self .backgroundColor=UIColor.clearColor()
        self .superview?.backgroundColor = UIColor.clearColor()
        self .separatorColor = UIColor.whiteColor()
        self .userInteractionEnabled = true
        self .registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }


    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    
}
/*
 // if need to make animation in table 

 UIView.transitionWithView(queTV! ,
 duration: 0.35,
 options: .TransitionFlipFromLeft ,
 animations:
 { () -> Void in
 self.queTV?.reloadData()
 },
 completion: nil);
 }

 .TransitionNone
 .TransitionFlipFromLeft
 .TransitionFlipFromRight
 .TransitionCurlUp
 .TransitionCurlDown
 .TransitionCrossDissolve
 .TransitionFlipFromTop
 .TransitionFlipFromBottom


 */



/*
//        _tableView___.dataSource = self
//        _tableView___.delegate = self

func numberOfSectionsInTableView(tableView: UITableView) -> Int {
return 1
}

func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
return 5
}

func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
return "Table View "
}

func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

var cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "myCell") as UITableViewCell

if (tableView == table2){
cell.textLabel?.text = ">>>>>> \(indexPath.section) Row \(indexPath.row)"
}else {
cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
}
return cell
}

func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
if (tableView != table2){
return true
}else {
return false
}

}



func tableView(tableView: UITableView,commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){

if (editingStyle == UITableViewCellEditingStyle.Delete) {
// handle delete (by removing the data from your array and updating the tableview)



}


}





func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {

cell.layer.transform = CATransform3DMakeScale(0.0,0.0,0)
UIView.animateWithDuration(0.5, animations: {
cell.layer.transform = CATransform3DMakeScale(1,1,1)
})


}



    */
