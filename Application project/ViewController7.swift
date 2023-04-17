
import UIKit

class ViewController7: UIViewController {
    
    @IBOutlet weak var confrimButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setconfirmButton()
       
        // Do any additional setup after loading the view.
    }
    
    @IBAction func confrimButtonAction(_ sender: Any) {
        naviget()
    }
    func setconfirmButton(){
        confrimButton.layer.cornerRadius = 30
        confrimButton.layer.masksToBounds = true
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        navigationController?.pushViewController(navigation, animated: true)
    }
}
