//
//  LogginMiddleware.swift
//  Reswift Counter
//
//  Created by thinhvoxuan on 7/26/16.
//  Copyright © 2016 GEEKUp Company. All rights reserved.
//
import ReSwift
let loggingMiddleware: Middleware = { dispatch, getState in
    return { next in
        return { action in
            // perform middleware logic
            print(action)
            
            // call next middleware
            return next(action)
        }
    }
}
