//
//  ViewController.swift
//  Day 3(Pull to refresh)
//
//  Created by Sonali on 1/30/18.
//  Copyright © 2018 Sonali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var refreshView : UIRefreshControl!
    @IBOutlet weak var rowTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        intializeRefreshView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func intializeRefreshView(){
        refreshView = UIRefreshControl()
        refreshView.addTarget(self, action: #selector(refreshTable), for: UIControlEvents.valueChanged)
        self.rowTableView.addSubview(refreshView)
        
    }
    @objc func refreshTable(){
        rowTableView.reloadData()
        
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        refreshView.endRefreshing()
    }
}


extension ViewController : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowCell = tableView.dequeueReusableCell(withIdentifier: "RowTableViewCell", for: indexPath) as! RowTableViewCell
        rowCell.rowLabel.text = "Row number \(indexPath.row + 1)"
        return rowCell
    }
    
}
