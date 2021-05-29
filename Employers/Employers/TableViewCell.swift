//
//  TableViewCell.swift
//  Employers
//
//  Created by Bishowjit Ray on 21/3/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
             imageView1.layer.cornerRadius = imageView1.frame.height / 2
        imageView2.layer.cornerRadius = imageView2.frame.height / 2
        label1.layer.cornerRadius = 25.0
        label2.layer.cornerRadius = 25.0
       
    }

}

