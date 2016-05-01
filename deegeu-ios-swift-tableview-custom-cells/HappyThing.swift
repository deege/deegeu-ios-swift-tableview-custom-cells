//
//  HappyThing.swift
//  deegeu-ios-swift-tableview-custom-cells
//
//  Created by Daniel Spiess on 4/30/16.
//  Copyright © 2016 Daniel Spiess. All rights reserved.
//

import UIKit

enum HappyType {
    case Person, Place, Thing
}

enum HappyRating {
    case OneHeart, TwoHearts, ThreeHearts, FourHearts, FiveHearts
}

class HappyThing : NSObject {
    var name : String
    var date : NSDate
    var rating: HappyRating?
    var happyType :HappyType
    
    init(name: String!, date: NSDate!, happyType: HappyType!) {
        self.date = date
        self.name = name
        self.happyType = happyType
    }
    
    init(name: String!, date: NSDate!, happyType: HappyType!, rating: HappyRating!) {
        self.date = date
        self.name = name
        self.happyType = happyType
        self.rating = rating
    }
    
    override var description: String {
        return name
    }
}