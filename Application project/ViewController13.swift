//
//  ViewController13.swift
//  Application project
//
//  Created by Jenish Navadiya on 28/04/23.
//

import UIKit

class ViewController13: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func userButtonASction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "userPage") as! userPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
