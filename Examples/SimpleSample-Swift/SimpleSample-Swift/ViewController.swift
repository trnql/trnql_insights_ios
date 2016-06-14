//
//  ViewController.swift
//  SimpleSample-Swift
//
//  Created by Jonathan Sahoo on 6/12/16.
//  Copyright © 2016 trnql. All rights reserved.
//

import UIKit
import trnql

class ViewController: UIViewController, TrnqlDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Trnql.apiKey="ENTER_API_KEY_HERE" // Required
        Trnql.userTokenForPeople = "Unique-User-ID" // Required for nearby people to be included in contextual snapshots
        Trnql.productNameForPeople = "SimpleSample-Swift" // Required for nearby people to be included in contextual snapshots
        Trnql.searchRadiusForPeople = 8000 // Optional
        Trnql.searchRadiusForPlaces = 5000 // Optional
        Trnql.contactEmail = "xxx@xxx.com" // Optional
        
        // Trnql.collectAnalyticsInBackground = true // Use IFF analytics should be collected in the background. Requires "Always" location authorization
        
        Trnql.addDelegate(self)
        Trnql.start()
    }
    
    func trnqlDidEncounterError(error: NSError) {
        print(error)
    }
    
    func trnqlOperationDidComplete(message: String) {
        print(message)
    }

    @IBAction func requestLocationAuthorization(sender: UIButton) {
        Trnql.requestWhenInUseLocationAuthorization()
    }
    
    @IBAction func requestActivityPermission(sender: UIButton) {
        Trnql.requestActivityPermission()
    }

    @IBAction func takeContextualSnapshot(sender: UIButton) {
        Trnql.takeContextSnapshotForEventNamed("Foo")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

