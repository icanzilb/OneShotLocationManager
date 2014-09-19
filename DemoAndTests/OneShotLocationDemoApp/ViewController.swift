//
//  ViewController.swift
//  OneShotLocationDemoApp
//
//  Created by Marin Todorov on 9/19/14.
//  Copyright (c) 2014 Underplot ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var manager: OneShotLocationManager?
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        //
        // request the current location
        //
        manager = OneShotLocationManager()
        manager!.fetchWithCompletion {location, error in

            // fetch location or an error
            if let loc = location {
                self.label.text = loc.description
            } else if let err = error {
                self.label.text = err.localizedDescription
            }

            // destroy the object immediately to save memory
            self.manager = nil
        }
        
    }
    
}