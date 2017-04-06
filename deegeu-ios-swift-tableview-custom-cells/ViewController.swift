//
//  ViewController.swift
//  deegeu-ios-swift-tableview-custom-cells
//
//  Created by Daniel Spiess on 4/30/16.
//  Copyright © 2016 Daniel Spiess. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let myDataSource = MyTableViewDataSource(happyThings: [
        HappyThing(name: "Beer", date: Date(), happyType: .thing, rating: .fourHearts),
        HappyThing(name: "My kid", date: Date(), happyType: .person, rating: .fiveHearts),
        HappyThing(name: "YouTube subscribers", date: Date(), happyType: .thing, rating: .threeHearts),
        HappyThing(name: "Iceland", date: Date(), happyType: .place, rating: .threeHearts),
        HappyThing(name: "Colorado", date: Date(), happyType: .place, rating: .fourHearts),
        HappyThing(name: "Puppies", date: Date(), happyType: .thing, rating: .oneHeart)],
        cellIdentifier: "cell")
    let myDelegate = MyTableViewDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set the tableview datasource
        self.tableView.dataSource = myDataSource
        self.tableView.delegate = myDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

