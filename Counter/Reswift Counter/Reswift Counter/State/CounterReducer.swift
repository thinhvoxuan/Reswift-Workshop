//
//  CounterReducer.swift
//  Reswift Counter
//
//  Created by thinhvoxuan on 7/26/16.
//  Copyright © 2016 GEEKUp Company. All rights reserved.
//

import ReSwift
struct CounterReducer: Reducer {
    func handleAction(action: Action, state: AppState?) -> AppState {
        var state = state ?? AppState()
        switch action {
        case let increaseAction as CounterActionIncrease:
            state.counter += increaseAction.value
        case let decreaseAction as CounterActionDecrease:
            state.counter -= decreaseAction.value
        default:
            break
        }
        return state
    }
    
}