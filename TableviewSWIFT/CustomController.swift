//
//  CustomController.swift
//  TableviewSWIFT
//
//  Created by Tops on 18/10/16.
//  Copyright © 2016 Tops. All rights reserved.
//

import UIKit

class CustomController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    var arrdata=[""]
    var arrimg=[""]
    override func viewDidLoad() {
        super.viewDidLoad()

        arrdata=["iOS","Android","JAVA","BADA","Symbain"]
        arrimg=["01.png","02.png","03.png","04.png","05.png"]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrdata.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        var mycell=TableViewCell()
        mycell=tableView.dequeueReusableCellWithIdentifier("cell") as! TableViewCell
        mycell.txt_cell.text=arrdata[indexPath.row]
        mycell.img_cell.image=UIImage(named: arrimg[indexPath.row])
        mycell.btn_cell .addTarget(self, action: "btnclick", forControlEvents: .TouchUpInside)
        return mycell
        
        
    }
    func btnclick()
    {
        let alert=UIAlertController(title: "CUstom Cell", message: "This is Custom cell", preferredStyle: .Alert)
        let ok=UIAlertAction(title: "Ok", style: .Default, handler: nil)
        let ok1=UIAlertAction(title: "MORE", style: .Destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(ok1)
        presentViewController(alert, animated: true, completion: nil)
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
