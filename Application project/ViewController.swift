import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        setloginButton()
        setsignupButton()
    }
    func setloginButton(){
        loginButton.layer.cornerRadius = 20
        loginButton.layer.masksToBounds = true
    }
    func setsignupButton(){
        signUpButton.layer.cornerRadius = 20
        signUpButton.layer.masksToBounds = true
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        naviget()
    }
    
    @IBAction func signUpButtonAction(_ sender: Any) {
        naviget2()
    }
    
     func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(navigation, animated: true)
    }
    func naviget2(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController4") as! ViewController4
        navigationController?.pushViewController(navigation, animated: true)
    }
}

