import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var continueButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setcontinueButton()
    }
    @IBAction func continueButtonAction(_ sender: Any) {
        naviget()
    }
    func setcontinueButton(){
        continueButton.layer.cornerRadius = 30
        continueButton.layer.masksToBounds = true
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController9") as! ViewController9
        navigationController?.pushViewController(navigation, animated: true)
    }
    
}
