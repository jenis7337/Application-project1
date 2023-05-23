import UIKit

class ViewController10: UIViewController {
    
    @IBOutlet weak var lookingGood: UIButton!
    
    @IBOutlet weak var popup: UIView!
    var myNav : UINavigationController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setlookingGood()
        view.alpha  = 0
        popup.layer.cornerRadius = 10
    }
    
    func setlookingGood(){
        lookingGood.layer.cornerRadius = 30
        lookingGood.layer.masksToBounds = true
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.view.alpha = 1
        }
    }
    
    @IBAction func lookingButtonAction(_ sender: Any) {
        dismiss(animated: false)
        naviget()
    }
    func naviget(){
        let a = storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        myNav?.pushViewController(a, animated: true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: false)
    }
}
