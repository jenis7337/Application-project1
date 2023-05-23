
import UIKit

class filtterPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    

    @IBAction func clickhome(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController14") as! ViewController14;        navigationController?.popViewController(animated: true)
    }
    
  
    
}
