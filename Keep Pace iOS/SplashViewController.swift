//
//  SplashViewController.swift
//  Keep Pace iOS
//
//  Created by Daniel Katz on 2018-04-25.
//  Copyright © 2018 Daniel Katz. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DatabaseHelper.init()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // Stores first launch boolean key
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        
        if launchedBefore  {
            // Not first launch
            // Display splash image for 3.0 seconds before moving to TOS
            _ = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) {_ in
                self.performSegue(withIdentifier: "toNav", sender: self)}
        } else {
            // First launch
            UserDefaults.standard.set(true, forKey: "launchedBefore")
    
            // Display splash image for 3.0 seconds before moving to TOS
            _ = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) {_ in
                self.performSegue(withIdentifier: "toTOS", sender: self)
            }
        }
    }
}


