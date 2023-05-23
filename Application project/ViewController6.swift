import UIKit

class ViewController6: UIViewController {
    
    @IBOutlet weak var mobileNumberTextfield: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setconfirmBUtton()
    }
    func setconfirmBUtton(){
        confirmButton.layer.cornerRadius = 30
        confirmButton.layer.masksToBounds = true
    }
    @IBAction func confirmButtonAction(_ sender: Any) {
        if mobileNumberTextfield.text == "7862024500"{
            
            
            naviget()
        }
        else{
            showAlert()
        }
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController7") as! ViewController7
        navigationController?.pushViewController(navigation, animated: true)
    }
    func showAlert(){
        let alret = UIAlertController.init(title: "Enter a modile number", message: "", preferredStyle: .alert)
        alret.addAction(UIAlertAction(title: "try Again", style: .default))
        present(alret, animated: true)
    }
}
