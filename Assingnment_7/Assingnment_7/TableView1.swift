//
//  TableView1.swift
//  Assingnment_7
//
//  Created by DCS on 07/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class TableView1: UIViewController {

    private let mytableview=UITableView();
    
    
    let foodarray=["Dhosa","Khaman","Pavbhaji","Manchuriyan","Pulav","Vadapav"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Custom Table View"
        view.addSubview(mytableview)
        setuptableview()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mytableview.frame = CGRect(x : 0,y :view.safeAreaInsets.top,
                                   width : view.frame.size.width,
                                   height : view.frame.size.height - view.safeAreaInsets.top -      view.safeAreaInsets.bottom)
    }
    public func passdata()
    {
        let c = Cell1_Detail()
        navigationController?.pushViewController(c, animated: true)
        present(c,animated: false)
    }
    
}
extension  TableView1 : UITableViewDataSource,UITableViewDelegate
{
    private func setuptableview(){
        mytableview.dataSource = self
        mytableview.delegate = self
        mytableview.register(FoodCell.self, forCellReuseIdentifier: "FoodCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for : indexPath) as! FoodCell
        cell.setupCityCellWith(title: foodarray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(foodarray[indexPath.row])
        UserDefaults.standard.setValue(foodarray[indexPath.row], forKey: "foodname")
        passdata()
    }
}
