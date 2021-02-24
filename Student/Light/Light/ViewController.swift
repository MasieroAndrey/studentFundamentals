//
//  ViewController.swift
//  Light
//
//  Created by amasiero on 17/02/21.
//

import UIKit

class ViewController: UIViewController {
   
    
    var lightOn = true
    fileprivate func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
       
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    
}

