//
//  ViewController.swift
//  hesapMakinesi
//
//  Copyright © 2017 diyalektik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var sonuc: UILabel!
    @IBOutlet weak var input2: UITextField!
    @IBAction func topla(_ sender: Any) {
    
        if let sayi1 = Int(input1.text!) , let sayi2 = Int(input2.text!)
        {
            let result = sayi1 + sayi2
            sonuc.text = "Sonuç : \(result)"
            
        }
        else
        {
            uyariButton()
        }

    }
    @IBAction func cikarma(_ sender: Any) {
        if let sayi1 = Int(input1.text!) , let sayi2 = Int(input2.text!)
        {
            let result = sayi1 - sayi2
            sonuc.text = "Sonuç : \(result)"
            
        }
        else
        {
            uyariButton()
        }

    }
    @IBAction func bolme(_ sender: Any) {
        if let sayi1 = Int(input1.text!) , let sayi2 = Int(input2.text!)
        {
            let result = sayi1 / sayi2
            sonuc.text = "Sonuç : \(result)"
            
        }
        else
        {
            uyariButton()
        }

    }
    @IBAction func carpma(_ sender: Any) {
        if let sayi1 = Int(input1.text!) , let sayi2 = Int(input2.text!)
        {
            let result = sayi1 * sayi2
            sonuc.text = "Sonuç : \(result)"
            
        }
        else
        {
            uyariButton()
        }

    }
    @IBAction func mod(_ sender: Any) {
        
        if let sayi1 = Int(input1.text!) , let sayi2 = Int(input2.text!)
        {
            let result = sayi1 % sayi2
            sonuc.text = "Sonuç : \(result)"
            
        }
        else
        {
            uyariButton()
        }
    }
    
    func uyariButton() -> Void {
        
        let uyari = UIAlertController.init(title: "Dikkat", message: "Lütfen düzgün bir sayi giriniz.😎", preferredStyle: UIAlertControllerStyle.alert)
        uyari.addAction(UIAlertAction(title: "KAPAT", style:UIAlertActionStyle.default, handler: nil))
        self.present(uyari, animated:true,completion: nil)    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

