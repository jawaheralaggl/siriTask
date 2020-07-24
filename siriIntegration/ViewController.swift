//
//  ViewController.swift
//  siriIntegration
//
//  Created by Jawaher Alagel on 7/23/20.
//  Copyright © 2020 Jawaher Alaggl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func addButton(_ sender: Any) {
        addBill()
    }
    
    func addBill() {
        let randomNumber = Int.random(in: 1...100)
        label.text = "\(randomNumber)"
        
        createUserActivity()
        
        print("You Bill Is: \(randomNumber)")
    }
    
    func createUserActivity() {
        
        let activity = NSUserActivity(activityType: "com.jaDanRA.siriIntegration.addBill")
        
        activity.title = "Add New Bill"
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        
        self.userActivity = activity
        self.userActivity?.becomeCurrent()
        
    }
    
    
    
}




