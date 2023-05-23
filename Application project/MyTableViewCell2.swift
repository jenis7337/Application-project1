//
//  MyTableViewCell2.swift
//  Application project
//
//  Created by Jenish Navadiya on 24/04/23.
//

import UIKit

class MyTableViewCell2: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var img3: UIImageView!
    
    @IBOutlet weak var lb4: UILabel!
    @IBOutlet weak var lb3: UILabel!
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
