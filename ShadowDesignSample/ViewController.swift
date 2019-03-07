//
//  ViewController.swift
//  ShadowDesignSample
//
//  Created by TakaoAtsushi on 2019/03/01.
//  Copyright © 2019 TakaoAtsushi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        
        let nib = UINib(nibName: "ShadowTableViewCell", bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: "Cell")
        
        tableView.rowHeight  = 120.0
        
        tableView.separatorStyle = .none
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! ShadowTableViewCell
        
        return cell
    }
    
    
    


}

