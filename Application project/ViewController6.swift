import UIKit

class ViewController6: UIViewController {

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
        naviget()
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController7") as! ViewController7
        navigationController?.pushViewController(navigation, animated: true)
    }
}
