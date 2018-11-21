//
//  HomeViewController.swift
//  BabyTime
//
//  Created by songlei on 2018/2/5.
//  Copyright © 2018年 songlei. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    
    lazy var navStatusView: UIView = {
        let view = UIView.init(frame: CGRect(x: 0, y: 0, width: XLZScreenWidth, height: 20))
        view.backgroundColor = UIColor.init(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1)
        return view
    }()
    
    lazy var homeTableView: UITableView = {
        let tableView = UITableView.init(frame: CGRect(x: 0, y: 20, width: XLZScreenWidth, height: XLZScreenHeigth-20), style: UITableViewStyle.plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.init(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1)
        
        return tableView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor.init(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1)
        self.view.addSubview(self.navStatusView)
        self.view.addSubview(self.homeTableView)
        
//        self.homeTableView.register(UINib.init(nibName: "cell", bundle: nil), forCellReuseIdentifier: "cell")
        self.homeTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        XLZLog(message: self.view)
        
        XLZLog(message: "self.view.controller")
        slprint("sdad")
        
        
        
        
    }

    
    

}



extension HomeViewController {
    
  
  
}



extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view: UIView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "footerView")!
        return view
    }
    
    
}



// Mark -- sdad
// MARK: -- sdad
// MARK: -- adasd




//print(<#T##items: Any...##Any#>)





















