//
//  TableViewController.swift
//  ButtonsUnderCells
//
//  Created by Richard Allen on 7/22/15.
//  Copyright (c) 2015 Lapdog. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var strings = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.strings = ["Richard", "Mindy", "Juniper", "Ava", "Spcaey"]
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count(self.strings)
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = self.strings[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [AnyObject]? {
        
        let marryAction = UITableViewRowAction(style: UITableViewRowActionStyle.Normal, title: "Marry") { (action, indexPath) -> Void in
            println("You married row \(indexPath.row)")
        }
        
        let kissAction = UITableViewRowAction(style: UITableViewRowActionStyle.Normal, title: "Kiss") { (action, indexPath) -> Void in
            println("You kissed row \(indexPath.row)")
        }
        
        let killAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Kill") { (action, indexPath) -> Void in
            println("You killed row \(indexPath.row)")
        }
        
        return [marryAction, kissAction, killAction]
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }


    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}
