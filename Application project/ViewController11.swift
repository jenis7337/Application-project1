import UIKit

class ViewController11: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
   


    @IBOutlet weak var cv: UICollectionView!
    
    @IBOutlet weak var cv2: UICollectionView!
    
    @IBOutlet weak var cv3: UICollectionView!
    var photo = [UIImage(named: "jennu"),UIImage(named: "monil"),UIImage(named: "jenis"),UIImage(named: "keval"),UIImage(named: "yagnik"),UIImage(named: "vicky"),UIImage(named: "harshid"),UIImage(named: "janavi"),UIImage(named: "sneha")]
  
 var img = [UIImage(named: "harshid")]
    var disimg = [UIImage(named: "d1"),UIImage(named: "d2"),UIImage(named: "d3"),UIImage(named: "d4"),UIImage(named: "d5"),UIImage(named: "d6"),UIImage(named: "d7"),UIImage(named: "d8")]
    
    var storyimg = [UIImage(named: "s1"),UIImage(named: "s2"),UIImage(named: "s3"),UIImage(named: "s4"),UIImage(named: "s5"),UIImage(named: "s6"),UIImage(named: "s7"),UIImage(named: "s8"),UIImage(named: "s9")]
    var id = ["jenu_18","monil_42","jenis_18","keval_04","yagnik_13","vicky_Aata","harshid_25","janavi_07","sneha_04"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == cv {
            return photo.count
        }
        else if collectionView == cv2
        {
            return img.count
        }
        else
        {
            return disimg.count
        }
     
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == cv {
            let cell = cv.dequeueReusableCell(withReuseIdentifier: "storycell", for: indexPath) as! storyCollectionViewCell
            cell.storyimg.layer.cornerRadius = cell.storyimg.frame.width/2
            cell.storyimg.image = photo[indexPath.row]
            cell.storyname.text = "\(id[indexPath.row])"
            cell.storyimg.layer.borderWidth = 3
            cell.storyimg.layer.borderColor = UIColor.purple.cgColor
            return cell
        }
        else if collectionView == cv2{
            let cell = cv2.dequeueReusableCell(withReuseIdentifier: "subscriptioncell", for: indexPath) as! subscriptionCollectionViewCell
            cell.subimg.image = img [indexPath.row]
            return cell
        }
        else
        {
            let cell = cv3.dequeueReusableCell(withReuseIdentifier: "discovercell", for: indexPath) as! discoverCollectionViewCell
            cell.discoverimg.image = disimg [indexPath.row]
            return cell
        }
    
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == cv{
            return CGSize(width: 100, height: 128)
        }
        else if collectionView == cv2{
            return CGSize(width: 175
                          , height: 200)
        }
        else{
            return CGSize(width: 180, height: 225)
        }
    }
    func showAlert(title:String){
        let alert = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction.init(title: "Manage Subscriptions and Notifications", style: .default,handler: { _ in
            self.naviget()
        }))
        alert.addAction(UIAlertAction.init(title: " View Hidden Channels", style: .default,handler: { _ in
            self.naviget2()
        }))
        alert.addAction(UIAlertAction(title: "Done", style: .default))
        present(alert, animated: true)
        
    }
    
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "popup1") as! popup1
        navigation.myNav = self.navigationController
        present(navigation, animated: false)
    }
    func naviget2(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "hiddenStories") as! hiddenStories
        navigation.myNav2 = self.navigationController
        present(navigation, animated: false)
    }
    @IBAction func moreButtonAction(_ sender: Any) {
        showAlert(title: "")
    }
  
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == cv{
            navigation( name: id[indexPath.row], photo: storyimg[indexPath.row]!)
        }
        else
        {
            
        }
        
    }
    func navigation(name:String,photo:UIImage){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "storiesShow") as! storiesShow
        navigate.a = name
        navigate.b = photo
        navigationController?.pushViewController(navigate, animated: true)
        
    }
}

    
    

    

