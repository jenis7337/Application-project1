
import UIKit

class ViewController7: UIViewController {
    
    @IBOutlet weak var otp: DPOTPView!
    @IBOutlet weak var confrimButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setconfirmButton()
 
    }
    
    @IBAction func confrimButtonAction(_ sender: Any) {
        if otp.text?.count ?? 0 != 6{
            showAlert()
        }
        else{
            naviget()
        }
    }
    func setconfirmButton(){
        confrimButton.layer.cornerRadius = 30
        confrimButton.layer.masksToBounds = true
    }
    func showAlert(){
        let alret = UIAlertController.init(title: "Enter a otp", message: "", preferredStyle: .alert)
        alret.addAction(UIAlertAction(title: "try Again", style: .default))
        present(alret, animated: true)
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        navigationController?.pushViewController(navigation, animated: true)
    }
}
