//
//  Cell1_Detail.swift
//  Assingnment_7
//
//  Created by DCS on 07/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Cell1_Detail: UIViewController {
   
    private let myimg:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 9
        img.clipsToBounds = true
        img.image = UIImage(named: (UserDefaults.standard.string(forKey: "foodname") ?? nil)!)
        return img
    }()
    
    private let lblhead:UILabel = {
        let lbl = UILabel()
        lbl.font = .boldSystemFont(ofSize : 28)
        lbl.text = UserDefaults.standard.string(forKey: "foodname")!
        return lbl
    }()
    
    private let lbldetail:UITextView = {
        let lbl = UITextView()
        lbl.font = .boldSystemFont(ofSize : 12)
        lbl.text = """
                    Step 1
                    Take Bwo
                    \n
                    Step 2
                    Add Ingridiance
                    \n
                    Step 3
                    Add Salt
                    \n
                    Step 4
                    Cook Till 20 Mintues
                    """
        return lbl
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .white
        view.addSubview(myimg)
        view.addSubview(lblhead)
        view.addSubview(lbldetail)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lblhead.frame = CGRect(x: 20, y: 60, width: view.frame.size.width-40, height: 30)

        myimg.frame = CGRect(x: 20, y: 110, width: view.frame.size.width-40, height: 250)
        lbldetail.frame = CGRect(x: 20, y: 370, width: view.frame.size.width-40, height: 250)
        
    }
}
