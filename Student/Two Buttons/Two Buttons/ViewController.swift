//
//  ViewController.swift
//  Two Buttons
//
//  Created by amasiero on 23/02/21.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var label: UILabel!
	@IBOutlet weak var textField: UITextField!
	
	@IBAction func setTextButtonTapped(_ sender: Any) {
		label.text = textField.text
		
	}
	@IBAction func clearTextButtonTapped(_ sender: Any) {
		label.text = ""
		textField.text = ""
		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		label.text = ""
		// Do any additional setup after loading the view.
	}


}

