//
//  ItemTests.swift
//  MyList
//
//  Created by Viraj Kothalawala on 30/4/17.
//  Copyright © 2017 Viraj Kothalawala. All rights reserved.
//

import XCTest
@testable import MyList

class ItemTests: XCTestCase {
    func initItem() {
        let item = Item(name: "Test", price: 3.5)
        
        XCTAssertNotNil(item)
        XCTAssertNotEqual(item.uuid, "")
    }
}
