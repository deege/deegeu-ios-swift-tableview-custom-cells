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
        HappyThing(name: "Beer", date: NSDate(), happyType: .Thing, rating: .FourHearts),
        HappyThing(name: "My kid", date: NSDate(), happyType: .Person, rating: .FiveHearts),
        HappyThing(name: "YouTube subscribers", date: NSDate(), happyType: .Thing, rating: .ThreeHearts),
        HappyThing(name: "Iceland", date: NSDate(), happyType: .Place, rating: .ThreeHearts),
        HappyThing(name: "Colorado", date: NSDate(), happyType: .Place, rating: .FourHearts),
        HappyThing(name: "Puppies", date: NSDate(), happyType: .Thing, rating: .OneHeart)],
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

