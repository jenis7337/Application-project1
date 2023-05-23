import UIKit

class popup1: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var myNav : UINavigationController?
    var id = ["Jenu Navadiya  ","Monil Sojitra","Rushit Navadiya","Keval Tala","Yagnik Kalathiya","Vicky Aata","Harshid Vadadoriya","Janavi Kachhi ","Sneha Magtarpara"]
    
    var photo = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "1"),UIImage(named: "3"),UIImage(named: "2"),UIImage(named: "1")]
    
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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return id.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! manageSubscription
        cell.lb1.text = "\(id[indexPath.row])"
        cell.img.image = photo[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        naviget()
    }
    func naviget(){
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController11") as! ViewController11
        myNav?.popViewController(animated: true)
    }
}
