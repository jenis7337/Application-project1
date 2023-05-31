import UIKit

class ViewController8: UIViewController {
    
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var datePiker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        datePiker.datePickerMode = .date
        datePiker.preferredDatePickerStyle = .compact
        datePiker.backgroundColor = .gray
        datePiker.layer.cornerRadius = 10
        datePiker.layer.masksToBounds = true
        setconfirmButton()
    }
    func setconfirmButton(){
        confirmButton.layer.cornerRadius = 30
        confirmButton.layer.masksToBounds = true
    }
    
    @IBAction func confirmButtonAction(_ sender: Any) {
        naviget()
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController5") as! ViewController5
        navigationController?.pushViewController(navigation, animated: true)
    }
}
