//
//  MyTableViewDatasource.swift
//  deegeu-swift-tableview-simple
//
//  Created by Daniel Spiess on 4/10/16.
//  Copyright © 2016 Daniel Spiess. All rights reserved.
//

import UIKit

class MyTableViewDataSource: NSObject, UITableViewDataSource {
    
    var happyThings: [HappyThing]
    var cellIdentifier: String
    let header = "Happy Things"
    let dateFormatter = NSDateFormatter()
    
    init(happyThings: [HappyThing]!, cellIdentifier: String!) {
        self.happyThings = happyThings
        self.cellIdentifier = cellIdentifier
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return happyThings.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MyTableViewCell
        
        // Fetch Happy Item
        let item = happyThings[indexPath.row]
        
        // Configure Cell
        cell.happyDate?.text = dateFormatter.stringFromDate(item.date)
        cell.happyName?.text = (item.description)
        
        // set person, place or thing image
        switch item.happyType {
        case 0:
            cell.leftImage?.image = UIImage(named:"image_person")
        case 1:
            cell.leftImage?.image = UIImage(named:"image_place")
        case 2:
            cell.leftImage?.image = UIImage(named:"image_thing")
        default:
            cell.leftImage?.image = UIImage(named:"image_person") // default
        }
        
        // Display rating image
        switch item.rating! {
        case 1:
            cell.rightImage?.image = UIImage(named:"1_hearts")
        case 2:
            cell.rightImage?.image = UIImage(named:"2_hearts")
        case 3:
            cell.rightImage?.image = UIImage(named:"3_hearts")
        case 4:
            cell.rightImage?.image = UIImage(named:"4_hearts")
        case 5:
            cell.rightImage?.image = UIImage(named:"5_hearts")
        default:
            cell.rightImage?.image = UIImage(named:"1_hearts")
        }

        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return header
    }
    
}