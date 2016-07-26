//
//  AddTenMiddleware.swift
//  Reswift Counter
//
//  Created by thinhvoxuan on 7/26/16.
//  Copyright © 2016 GEEKUp Company. All rights reserved.
//

import ReSwift
let addTenMiddleware: Middleware = { dispatch, getState in
    return { next in
        return { action in
            if var increaseAction = action as? CounterActionIncrease {
                increaseAction.value = increaseAction.value * 10
                return next(increaseAction)
            }
            return next(action)
        }
    }
}
