//
//  HappyThing.swift
//  deegeu-ios-swift-tableview-custom-cells
//
//  Created by Daniel Spiess on 4/30/16.
//  Copyright © 2016 Daniel Spiess. All rights reserved.
//

import UIKit

enum HappyType {
    case person, place, thing
}

enum HappyRating {
    case oneHeart, twoHearts, threeHearts, fourHearts, fiveHearts
}

class HappyThing : NSObject {
    var name : String
    var date : Date
    var rating: HappyRating?
    var happyType :HappyType
    
    init(name: String!, date: Date!, happyType: HappyType!) {
        self.date = date
        self.name = name
        self.happyType = happyType
    }
    
    init(name: String!, date: Date!, happyType: HappyType!, rating: HappyRating!) {
        self.date = date
        self.name = name
        self.happyType = happyType
        self.rating = rating
    }
    
    override var description: String {
        return name
    }
}
