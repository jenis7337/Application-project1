import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var forgotButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationItem.hidesBackButton = true
        setLoginButton()
    }
    
    @IBAction func loginButtonaAction(_ sender: Any) {
        
        if userNameTextField.text == "jenu_navadiya" && passwordTextField.text == "12345"{
            naviget()
        }
        else if userNameTextField.text == "" && passwordTextField.text == ""{
            showAlert(title: "Please Enter Your Username & Password")
        }
        else if userNameTextField.text == ""{
            showAlert(title: "Please Enter Your Username")
        }
        else if passwordTextField.text == ""{
            showAlert(title: "Please Enter Your password")
        }
        
        else{
            passwordAlert()
        }
        
    }
    @IBAction func forgotPasswordButtonAction(_ sender: Any) {
        naviget3()
    }
    
    @IBAction func signupButtonAction(_ sender: Any) {
        naviget2()
    }
    
    
    func setLoginButton(){
        loginButton.layer.cornerRadius = 20
        loginButton.layer.masksToBounds = true
    }
    func showAlert(title:String){
        let alert = UIAlertController(title: "Error", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive))
        present(alert, animated: true)
        
    }
    func passwordAlert(){
        let alert = UIAlertController(title: "Incorrect Password", message: "The Password You Entered Incorrect . Please Try Again", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        navigationController?.pushViewController(navigation, animated: true)
    }
    func naviget2(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController4") as! ViewController4
        navigationController?.pushViewController(navigation, animated: true)
    }
    func naviget3(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController5") as! ViewController5
        navigationController?.pushViewController(navigation, animated: true)
    }
}
