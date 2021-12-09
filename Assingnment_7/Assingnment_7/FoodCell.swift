//
//  FoodCell.swift
//  Assingnment_7
//
//  Created by DCS on 07/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class FoodCell: UITableViewCell {

    private let myimg:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 40
        img.clipsToBounds = true
        return img
    }()
    
    private let mylbl:UILabel = {
        let lbl = UILabel()
        lbl.font = .boldSystemFont(ofSize : 28)
        return lbl
    }()
    private let mylbl1:UILabel = {
        let lbl = UILabel()
        lbl.font = .boldSystemFont(ofSize : 13)
        lbl.text = "This Dish is Famous In India";
        return lbl
    }()
    
    func  setupCityCellWith(title name: String){
        contentView.addSubview(myimg)
        contentView.addSubview(mylbl)
        contentView.addSubview(mylbl1)
        myimg.frame = CGRect(x: 20, y: 20, width: 80, height: 80)
        mylbl.frame = CGRect(x: 100 + 20, y: 20, width: 200, height: 80)
        mylbl1.frame = CGRect(x: 100 + 20, y: 60, width: 200, height: 80)
        myimg.image = UIImage(named: name)
        mylbl.text = name
    }

}
