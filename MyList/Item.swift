//
//  Item.swift
//  MyList
//
//  Created by Viraj Kothalawala on 30/4/17.
//  Copyright © 2017 Viraj Kothalawala. All rights reserved.
//

import UIKit

class Item: NSObject, NSCoding {
    
    var uuid: String = NSUUID().uuidString
    var name: String = ""
    var price: Float = 0.0
    var inShoppingList: Bool = false
    
    required init?(coder decoder: NSCoder) {
        super.init()
        
        if let archiveduuid = decoder.decodeObject(forKey: "uuid") as? String {
            uuid = archiveduuid
        }
        
        if let archivedName = decoder.decodeObject(forKey: "name") as? String {
            name = archivedName
        }
        
        price = decoder.decodeFloat(forKey: "price")
        inShoppingList = decoder.decodeBool(forKey: "inShoppingList")
    }
    
    init(name: String, price: Float) {
        super.init()
        
        self.name = name
        self.price = price
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(uuid, forKey: "uuid")
        coder.encode(name, forKey: "name")
        coder.encode(price, forKey: "price")
        coder.encode(inShoppingList, forKey: "inShoppingList")
    }
}
