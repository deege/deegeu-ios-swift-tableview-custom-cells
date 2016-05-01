//
//  HappyThing.swift
//  deegeu-ios-swift-tableview-custom-cells
//
//  Created by Daniel Spiess on 4/30/16.
//  Copyright © 2016 Daniel Spiess. All rights reserved.
//

import UIKit

class HappyThing : NSObject {
    var name : String
    var date : NSDate
    var rating: Int?
    var happyType :Int
    
    init(name: String!, date: NSDate!, happyType: Int!) {
        self.date = date
        self.name = name
        self.happyType = happyType
    }
    
    init(name: String!, date: NSDate!, happyType: Int!, rating: Int!) {
        self.date = date
        self.name = name
        self.happyType = happyType
        self.rating = rating
    }
    
    override var description: String {
        return name
    }
}