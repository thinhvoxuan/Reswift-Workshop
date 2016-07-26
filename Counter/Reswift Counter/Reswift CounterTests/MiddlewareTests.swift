//
//  MiddlewareTests.swift
//  Reswift Counter
//
//  Created by thinhvoxuan on 7/26/16.
//  Copyright © 2016 GEEKUp Company. All rights reserved.
//

import XCTest
import ReSwift

class MiddlewareTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMiddleware() {
        let mainStore = Store<AppState>(
            reducer: CounterReducer(),
            state: nil,
            middleware: [addTenMiddleware]
        )
        mainStore.dispatch(CounterActionIncrease())
        XCTAssertEqual(mainStore.state.counter, 10)
    }
    
    func testMiddlewares(){
        let mainStore = Store<AppState>(
            reducer: CounterReducer(),
            state: nil,
            middleware: [addTenMiddleware, loggingMiddleware]
        )
        mainStore.dispatch(CounterActionIncrease(value: 2))
        XCTAssertEqual(mainStore.state.counter, 20)
    }
}
