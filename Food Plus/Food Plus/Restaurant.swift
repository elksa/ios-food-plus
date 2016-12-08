//
//  Restaurant.swift
//  Food Plus
//
//  Created by Alejandro Casanova Mutis on 12/6/16.
//  Copyright © 2016 elKsa. All rights reserved.
//

import Foundation

class Restaurant {
    
    var name = ""
    var type = ""
    var location = ""
    var image = ""
    var isVisited = false
    var phoneNumber = ""
    
    init(name: String, type: String, location: String, image: String, isVisited: Bool, phoneNumber: String) {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isVisited = isVisited
        self.phoneNumber = phoneNumber
    }
}
