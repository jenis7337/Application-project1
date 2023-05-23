
import UIKit

class hiddenStories: UIViewController {
    var myNav2 : UINavigationController?
    @IBOutlet weak var popup: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.alpha  = 0
        popup.layer.cornerRadius = 10
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.view.alpha = 1
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: false)
    }

}
