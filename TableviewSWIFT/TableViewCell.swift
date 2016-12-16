//
//  TableViewCell.swift
//  TableviewSWIFT
//
//  Created by Tops on 18/10/16.
//  Copyright © 2016 Tops. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var btn_cell: UIButton!
    @IBAction func btn_cellaction(sender: AnyObject)
    {
        
    }
    @IBOutlet weak var txt_cell: UITextField!
    @IBOutlet weak var img_cell: UIImageView!
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
}
