import UIKit

class ViewController9: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    var name = ["deep","monil","jenis","keval","yagnik","vicky","niraj","harsh","harshid"]
    var id = ["deep_mangukiya","monil_4242","jenis_1811","keval_04","yagnik_13","vicky_Aata","niraj_09","harsh_89","harshid_14"]
    
    var photo = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "1"),UIImage(named: "3"),UIImage(named: "2"),UIImage(named: "1")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.lb1.text = "\(name[indexPath.row])"
        cell.img.image = photo[indexPath.row]
        cell.lb2.text = id[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
}
