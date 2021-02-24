//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by amasiero on 17/02/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.setTitleColor(.red, for: .normal)
        // Do any additional setup after loading the view.
    }
    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text = "this app rocks!"
    }
    

}

