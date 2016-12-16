//
//  ViewController.swift
//  TableviewSWIFT
//
//  Created by Tops on 18/10/16.
//  Copyright © 2016 Tops. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrdata=[""]
    var arrdics=[""]
    var arrimg=[""]
    override func viewDidLoad() {
        super.viewDidLoad()
        arrdata=["iOS","Android","JAVA","BADA","Symbain"]
        arrdics=["Apple Inc","Google Inc","Sun Microsystem","Samsung OS","NOKIA OS"]
        arrimg=["01.png","02.png","03.png","04.png","05.png"]

        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var mytbl: UITableView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]?
    {
        let btn1=UITableViewRowAction(style: .Default, title: "Read", handler: {ACTION in
        
         print("Clickd!!")
        
        
        
        })
        btn1.backgroundColor=UIColor.grayColor()
        let btn2=UITableViewRowAction(style: .Default, title: "Done", handler: {ACTION in
            
            print("Clickd!!")
            
            
        })
        btn2.backgroundColor=UIColor.purpleColor()
        return[btn1,btn2]

    }
    /*func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        arrdata.removeAtIndex(indexPath.row)
        mytbl.reloadData()
    }
*/
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrdata.count
    }
    func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath)
    {
        let alert=UIAlertController(title: arrdata[indexPath.row], message: arrdics[indexPath.row], preferredStyle: .Alert)
        let ok=UIAlertAction(title: "Ok", style: .Default, handler: nil)
        let ok1=UIAlertAction(title: "MORE", style: .Destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(ok1)
        presentViewController(alert, animated: true, completion: nil)
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        let alert=UIAlertController(title: arrdata[indexPath.row], message: arrdics[indexPath.row], preferredStyle: .ActionSheet)
        let ok=UIAlertAction(title: "Ok", style: .Default, handler: nil)
        let ok1=UIAlertAction(title: "MORE", style: .Destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(ok1)
        presentViewController(alert, animated: true, completion: nil)
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let cell=UITableViewCell(style:.Subtitle, reuseIdentifier: nil)
        cell.textLabel!.text=arrdata[indexPath.row]
        cell.detailTextLabel!.text=arrdics[indexPath.row]
        cell.imageView!.image=UIImage(named: arrimg[indexPath.row])
        cell.accessoryType=UITableViewCellAccessoryType.DetailDisclosureButton
        return cell
    }
}

