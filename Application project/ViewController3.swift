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
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController10") as! ViewController10
        navigation.myNav = self.navigationController
        present(navigation, animated: false)
    }
    
}
