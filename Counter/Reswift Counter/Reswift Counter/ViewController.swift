//
//  ViewController.swift
//  Reswift Counter
//
//  Created by thinhvoxuan on 7/26/16.
//  Copyright © 2016 GEEKUp Company. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber {
    @IBOutlet weak var point: UILabel!
    @IBAction func increase(sender: UIButton) {
        mainStore.dispatch(
            CounterActionIncrease()
        )
    }
    @IBAction func decrease(sender: UIButton) {
        mainStore.dispatch(
            CounterActionDecrease()
        )
    }
    
    override func viewWillAppear(animated: Bool) {
        mainStore.subscribe(self)
    }
    
    override func viewWillDisappear(animated: Bool) {
        mainStore.unsubscribe(self)
    }
    
    func newState(state: AppState) {
        self.point.text = "\(state.counter)"
    }


}

