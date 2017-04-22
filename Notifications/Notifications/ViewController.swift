//
//  ViewController.swift
//  Notifications
//
//  Created by kübra kurt on 21.04.2017.
//  Copyright © 2017 diyalektik. All rights reserved.
//

import UIKit
import UserNotifications
class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnPressed(_ sender: UIButton) {
        
        let yes = UNNotificationAction.init(identifier: "yes", title: "Yes", options: .foreground)
        let no = UNNotificationAction.init(identifier: "no", title: "No", options: .foreground)
        
        let catagory = UNNotificationCategory.init(identifier: "cat", actions: [yes,no], intentIdentifiers: [], options: [])
        UNUserNotificationCenter.current().setNotificationCategories([catagory])

        
        let content = UNMutableNotificationContent()
        content.title = "Test your IQ🤔"
        content.body = "Is 3 bigger than 4"
        content.categoryIdentifier = "cat"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval : 5, repeats: false)
        let request = UNNotificationRequest.init(identifier: "any", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }


}

