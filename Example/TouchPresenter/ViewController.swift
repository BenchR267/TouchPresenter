//
//  ViewController.swift
//  TouchPresenter
//
//  Created by Benjamin Herzog on 07/17/2016.
//  Copyright (c) 2016 Benjamin Herzog. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let t = UITableView(frame: view.bounds)
        t.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        t.dataSource = self
        t.delegate = self
        
        t.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        view.addSubview(t)
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = "\(indexPath.row)"
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
}

