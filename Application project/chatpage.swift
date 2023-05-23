//
//  chatpage.swift
//  Application project
//
//  Created by Jenish Navadiya on 18/05/23.
//

import UIKit

class chatpage: UIViewController {
    
    @IBOutlet weak var chatName: UILabel!
    @IBOutlet weak var chatImg: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var lb: UILabel!
    var a = String()
    var b = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        chatImg.image = b
        chatName.text = a
        setLable()
        initialSetup()
    }
    func setLable(){
        lb.layer.cornerRadius = 17
        lb.layer.masksToBounds = true
    }
    private func initialSetup(){
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeryoard)))
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(Notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    @objc private func hideKeryoard(){
        self.view.endEditing(true)
        
    }
    @objc private func keyboardWillShow(Notification : NSNotification){
        if let keyboardFrame : NSValue = Notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue{
            let keyboardHeight = keyboardFrame.cgRectValue.height
            let bottomSpace = self.view.frame.height - (textField.frame.origin.y + textField.frame.height)
            self.textField.frame.origin.y -= keyboardHeight - bottomSpace + 10
        }
    }
    @objc private func keyboardWillHide(){
        self.textField.frame.origin.y = 730
        //            dismiss(animated: true)
    }
    deinit{
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
}
