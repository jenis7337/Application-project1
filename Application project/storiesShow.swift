import UIKit

class storiesShow: UIViewController {

    @IBOutlet weak var lb: UILabel!
    @IBOutlet weak var img: UIImageView!
    var a = String()
    var b = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = b
        lb.text = a
//        navigationItem.hidesBackButton = true
   
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: false)
    }

}
