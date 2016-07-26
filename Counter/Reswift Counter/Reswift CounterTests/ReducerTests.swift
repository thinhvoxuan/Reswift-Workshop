//
//  Reducer.swift
//  Reswift Counter
//
//  Created by thinhvoxuan on 7/26/16.
//  Copyright © 2016 GEEKUp Company. All rights reserved.
//

import XCTest
import ReSwift

class ReducerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIncraseByOne() {
        let counterReducer = CounterReducer()
        let newState = counterReducer._handleAction(CounterActionIncrease(), state: nil) as? AppState
        XCTAssertEqual(newState?.counter, 1)
    }
    
    func testDecreaseByOne() {
        let counterReducer = CounterReducer()
        let state1 = AppState(counter: 1)
        let newState = counterReducer._handleAction(CounterActionDecrease(), state: state1) as? AppState
    
        XCTAssertEqual(newState?.counter, 0)
    }
    
}
