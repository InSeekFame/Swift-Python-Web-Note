//
//  ViewController.swift
//  Swift-Python-Web-Note
//
//  Created by qiangge on 2020/8/7.
//  Copyright © 2020 lxr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var tableView: UITableView!
    var dataSource = ["Swift笔记","Python笔记","Python Flask",
                      "Html笔记","CSS笔记","JS笔记"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    

}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataSource[indexPath.row]
        return cell
    }
}




