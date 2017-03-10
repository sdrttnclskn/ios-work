//
//  ViewController.swift
//  Desing
//
//  Created by kübra kurt on 9.03.2017.
//  Copyright © 2017 diyalektik. All rights reserved.
//makeappicon : icon secimi. ios ve android için sectiğiniz icon ekran boyutlaıntı veriri.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textName: UILabel!
    
    @IBOutlet weak var text: UILabel!
    
    @IBAction func soyle(_ sender: Any) {
        
        
        //çk
        let pluralNames = ["elmalar", "ayvalar", "kitaplar", "kuşlar", "evler", "arabalar", "kamyonlar", "kavunlar", "maymunlar", "eşşekler"]
        
        //şz
        let verbs = ["geliyorum", "gidiyorum", "zıplıyorum", "dokunuyorum", "koşuyorum", "gülüyorum", "ağlıyorum", "uyuyorum", "seviyorum", "kahroluyorum"]
        
        //sd
        let numbers = ["bir", "iki", "üç", "dört", "beş", "altı", "yedi", "sekiz", "dokuz", "on"]
        
        //ie
        let adjectives = ["güzelim", "çirkinim", "şirinim", "çiçeğim", "böceğim", "gebereyim", "gındırım", "bıngıldağım", "tombişim", "tontişim"]
        
        var selam = "Ada sahillerinde \(verbs[Int(arc4random()%10)])" +
            "\nHer zaman yollarını \(verbs[Int(arc4random()%10)])" +
            "\nSeni senden \(adjectives[Int(arc4random()%10)]) \(verbs[Int(arc4random()%10)])" +
            "\nBeni şad et şadiye başın için" +
            "\nHer zaman sen yalancı ben kâni" +
            "\nHer zaman orta yerde \(numbers[Int(arc4random()%10)]) mani" +
            "\nHer zaman sen uzakta ben müştak" +
            "\nHer tellakide \(numbers[Int(arc4random()%10)]) hayalin berrak" +
            "\nNerede o mis gibi \(pluralNames[Int(arc4random()%10)])" +
            "\nSararıp solmak üzere \(pluralNames[Int(arc4random()%10)])" +
            "\nBana mesken olunca \(pluralNames[Int(arc4random()%10)])" +
        "\nBeni yad et \(adjectives[Int(arc4random()%10)]) başın için"
        
        text.text = selam
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

