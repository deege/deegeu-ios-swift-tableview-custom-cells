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
    let dateFormatter = DateFormatter()
    
    init(happyThings: [HappyThing]!, cellIdentifier: String!) {
        self.happyThings = happyThings
        self.cellIdentifier = cellIdentifier
        dateFormatter.dateStyle = DateFormatter.Style.medium
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return happyThings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MyTableViewCell
        
        // Fetch Happy Item
        let item = happyThings[indexPath.row]
        
        // Configure Cell
        cell.happyDate?.text = dateFormatter.string(from: item.date)
        cell.happyName?.text = (item.description)
        
        // set person, place or thing image
        switch item.happyType {
            case HappyType.person:
                cell.leftImage?.image = UIImage(named:"image_person")
            case HappyType.place:
                cell.leftImage?.image = UIImage(named:"image_place")
            case HappyType.thing:
                cell.leftImage?.image = UIImage(named:"image_thing")
        }
        
        // Display rating image
        switch item.rating! {
            case HappyRating.oneHeart:
                cell.rightImage?.image = UIImage(named:"1_hearts")
            case HappyRating.twoHearts:
                cell.rightImage?.image = UIImage(named:"2_hearts")
            case HappyRating.threeHearts:
                cell.rightImage?.image = UIImage(named:"3_hearts")
            case HappyRating.fourHearts:
                cell.rightImage?.image = UIImage(named:"4_hearts")
            case HappyRating.fiveHearts:
                cell.rightImage?.image = UIImage(named:"5_hearts")
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return header
    }
    
}
