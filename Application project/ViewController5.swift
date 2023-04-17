
import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var confirmButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
     setconfirmButton()
    }
    @IBAction func confirmButtonAction(_ sender: Any) {
        showAlert(title: "")
        naviget()
    }
    func setconfirmButton(){
        confirmButton.layer.cornerRadius = 30
        confirmButton.layer.masksToBounds = true
    }
    func showAlert(title:String){
        let alert = UIAlertController(title: "Notice", message: "New Password is Successsful", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default,handler: { _ in
            self.naviget()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive))
        present(alert, animated: true)
        
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController6") as! ViewController6
        navigationController?.pushViewController(navigation, animated: true)
    }
}
