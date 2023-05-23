//
//  MyTableViewCell.swift
//  Application project
//
//  Created by Jenish Navadiya on 18/04/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet weak var lb2: UILabel!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lb1: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
         setAddButton()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBAction func addButtonAction(_ sender: Any) {
        
    }
    
    func setAddButton(){
        addButton.layer.cornerRadius = 15
        addButton.layer.masksToBounds = true
    }
}
