//
//  ViewController4.swift
//  Application project
//
//  Created by Jenish Navadiya on 13/04/23.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userNameTextField2: UITextField!
    @IBOutlet weak var continueAndAcceptButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       setcontinueAcceptButton()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func continueAndAcceptButtonAction(_ sender: Any) {
      naviget()
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController8") as! ViewController8
        navigationController?.pushViewController(navigation, animated: true)
    }

    func setcontinueAcceptButton(){
        continueAndAcceptButton.layer.cornerRadius = 30
        continueAndAcceptButton.layer.masksToBounds = true
    }

}
