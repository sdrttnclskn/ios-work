//
//  ViewController.swift
//  Network
//
//  Created by kübra kurt on 12.04.2017.
//  Copyright © 2017 diyalektik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func simplestRequest(_ sender: UIButton) {
        
        
        let urlString = URL(string: "https://httpbin.org/ip")
        
        if let url = urlString{
        
            let task = URLSession.shared.dataTask(with: url) {(data , response , error ) in
                if error != nil {
                  print("\(error)")
                } else {
                    
                    if let usableData = data {
                    
                        let json = try! JSONSerialization.jsonObject(with: usableData, options: []) as!
                            [String:String]
                        
                        if let value = json["origin"]{
                          print(value)
                        }
                    }
                }
                
            }
        
            task.resume()
        }
    }
    @IBAction func simpleRequest(_ sender: UIButton) {
        
        
        let urlString = URL(string: "https://httpbin.org/headers")
        
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print("\(error)")
                } else {
                    if let usableData = data {
                        
                        let json = try! JSONSerialization.jsonObject(with: usableData, options: []) as! [String:Any]
                        
                        if let origin = json["headers"] as! [String:String]?
                        {
                            print(origin["Connection"]!)
                            print(origin["Accept-Language"]!)
                            print(origin["Host"]!)
                            print(origin["Accept"]!)
                            print(origin["User-Agent"]!)
                            print(origin["Accept-Encoding"]!)
                        }
                    }
                }
            }
            task.resume()
        }
    }

    @IBAction func getRequest(_ sender: UIButton) {
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

