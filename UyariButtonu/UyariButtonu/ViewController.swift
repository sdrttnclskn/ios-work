//
//  ViewController.swift
//  UyariButtonu
//
//  Created by kübra kurt on 10.03.2017.
//  Copyright © 2017 diyalektik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBAction func selamVer(_ sender: Any) {
        
        let uyari = UIAlertController(title: "Selamün Aleyküm", message: "Hayırlı Cumalar 🎈", preferredStyle: UIAlertControllerStyle.alert)
        uyari.addAction(UIAlertAction(title: "Aleyküm Selam", style: UIAlertActionStyle.default, handler: nil))
        uyari.addAction(UIAlertAction(title: "Hayırlı Cumalar", style: UIAlertActionStyle.default, handler: nil))
        self.present(uyari, animated: true, completion: nil)
        
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

