
import UIKit

class LoginPage: UIViewController {

    
    private let txtuname : UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.roundedRect
        txt.layer.cornerRadius = 6
        txt.placeholder = "Enter User Name"
        return txt
    }()
    private let txtupass : UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.roundedRect
        txt.layer.cornerRadius = 6
        txt.placeholder = "Enter Password"
        return txt
    }()
    
    private let btnlogin:UIButton={
        let btn1 = UIButton()
        btn1.setTitle("Login", for: .normal)
        btn1.backgroundColor = .red
        btn1.layer.cornerRadius = 10
        btn1.addTarget(self, action: #selector(navigate), for: .touchUpInside)
        return btn1
        
    }()
    
    @objc func navigate(){
        let c = TableView1()
        navigationController?.pushViewController(c, animated: true)
        present(c,animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2.jpeg")!)
        view.addSubview(txtuname)
        view.addSubview(txtupass)
        view.addSubview(btnlogin)
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        txtuname.frame = CGRect(x: 50, y: 200, width: view.frame.size.width-100, height: 45)
        txtupass.frame = CGRect(x: 50, y: 260, width: view.frame.size.width-100, height: 45)
        btnlogin.frame = CGRect(x: 50, y: 315, width: view.frame.size.width-100, height: 45)
        
      
    }

}
