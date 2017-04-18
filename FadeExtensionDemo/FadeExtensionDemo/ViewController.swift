//
//  ViewController.swift
//  FadeExtensionDemo
//
//  Created by Gabrielle Miller-Messner on 6/26/15.
//  Copyright (c) 2015 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func alpha1(_ sender: Any) {
        
        imageView.alpha = 1
    }
    @IBAction func alpha05(_ sender: Any) {
        imageView.alpha = 0.5
    }
    
    @IBAction func alpha0(_ sender: UIButton) {
        
        imageView.alpha = 0
    }
    @IBAction func anime1(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.denme()}, completion: nil)
        
    }
    
    @IBAction func anime2(_ sender: Any) {
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.imageView.alpha = 1}, completion: {
        
                (Bool) -> Void in
                
                if self.imageView.image == UIImage(named: "sunrise")
                {
                
                
                }
            
                self.sunRiseAndSet(AnyObject)
                self.anime2(Any)
        
        })
        
    }
    
    func denme (){
        self.imageView.alpha = 0
    }
    // MARK: Actions
    
    @IBAction func sunRiseAndSet(_ sender: AnyObject) {
      


        if (self.imageView.image == UIImage(named: "sunrise"))
        {
            self.imageView.image = UIImage(named:"sunset")!
        } else {
            self.imageView.image = UIImage(named:"sunrise")!
        }
        


    }



}
