//
//  ViewController.swift
//  TabTab
//
//  Created by Charles on 23/1/20.
//  Copyright © 2020 Charles. All rights reserved.
//

import UIKit

class mytableCell : UITableViewCell {
    
    @IBOutlet weak var sw1: UISwitch!
    @IBOutlet weak var lblsw: UILabel!
    
}


class ViewController: UIViewController, UITabBarDelegate, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! mytableCell
        //cell.textLabel!.text = String(indexPath.row)
        if cell.sw1.isOn {
            cell.lblsw.text = "ON"
        }
        else {
            cell.lblsw.text = "OFF"
        }
        return cell
    }
    

    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var tabbar: UITabBar!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tabbar.delegate = self
        tableview.delegate = self
        tableview.dataSource = self
    }

    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(item.title)
        if item.title == "Tab1" {
            view1.isHidden = false
            view2.isHidden = true
        } else {
            view1.isHidden = true
            view2.isHidden = false}
    }
    
}

