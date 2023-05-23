import UIKit

class ViewController12: UIViewController,UITableViewDelegate,UITableViewDataSource {
  var id = ["deep_mangukiya","monil_4242❤️","jenis_1811😍","keval_04","yagnik_13👬","vicky_Aata","niraj_09","harsh_89","harshid_14💜","ruhsit_navadiya","akhil_navadiya","rushit_maniya😊"]
    

    var id2 = ["113","10","200","130","122","112","190","230","299","213","123","321"]
    var id3 = ["Delivered","opened","Delivered","Delivered","Delivered","Delivered","Delivered","Delivered","Delivered","Delivered","opened","opened"]
    var id4 = ["1mo","1m","40m","2h","1w","2mo","1h","1m","2w","21h","2mo","1m"]
    
    var photo = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "2"),UIImage(named: "1"),UIImage(named: "6"),UIImage(named: "4"),UIImage(named: "5")]
    
    var photo2 = [UIImage(named: "jk"),UIImage(named: "jk"),UIImage(named: "jk"),UIImage(named: "jk"),UIImage(named: "jk"),UIImage(named: "jk"),UIImage(named: "jk"),UIImage(named: "jk"),UIImage(named: "jk"),UIImage(named: "jk"),UIImage(named: "jk"),UIImage(named: "jk")]
    
    var photo3 = [UIImage(named: "right-arrow"),UIImage(named: "opened"),UIImage(named: "right-arrow"),UIImage(named: "right-arrow"),UIImage(named: "right-arrow"),UIImage(named: "right-arrow"),UIImage(named: "right-arrow"),UIImage(named: "right-arrow"),UIImage(named: "right-arrow"),UIImage(named: "right-arrow"),UIImage(named: "opened"),UIImage(named: "opened")]
    
   override func viewDidLoad() {
        super.viewDidLoad()
  
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return id.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell2
        cell.lb1.text = "\(id[indexPath.row])"
        cell.lb2.text = "\(id2[indexPath.row])"
        cell.lb3.text = "\(id3[indexPath.row])"
        cell.lb4.text = "\(id4[indexPath.row])"

        cell.img.image = photo[indexPath.row]
        cell.img2.image = photo2[indexPath.row]
        cell.img3.image = photo3[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigation( name: id[indexPath.row], photo: photo[indexPath.row]!)
    }
    func navigation(name:String,photo:UIImage){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "chatpage") as! chatpage
        navigate.a = name
        navigate.b = photo
        navigationController?.pushViewController(navigate, animated: true)
        
    }



}
